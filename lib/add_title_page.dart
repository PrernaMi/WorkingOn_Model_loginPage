import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/appConstant.dart';
import 'package:login_page_adding_to_list/dashboard_page.dart';
import 'package:login_page_adding_to_list/model_class.dart';
import 'package:login_page_adding_to_list/remove_page.dart';
import 'package:login_page_adding_to_list/update_page.dart';

class AddDetails extends StatefulWidget{
  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();

    TextEditingController descController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text("Add Notes"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          /*--------------Title Field------------*/
          SizedBox(
            height: 50,
              width: 300,
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "Enter Your title here..",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              )),
          SizedBox(height: 30,),
          /*--------------Description Field------------*/
          SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: descController,
                decoration: InputDecoration(
                    labelText: "Description",
                    hintText: "Enter Your Description here..",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
              )),
          SizedBox(height: 30,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*---------------Add----------------*/
                  ElevatedButton(
                      onPressed: (){
                        String mtitle = titleController.text.toString();
                        String decs = descController.text.toString();
                        AppConstant.notes.add(
                          UserModel(
                              title: mtitle,
                              description: decs
                          ).toMap(),
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DashBoardPage();
                        }));
                        // print(AppConstant.notes);
                        setState(() {

                        });
                      },
                      child: Text("Add")
                  ),
                  /*---------------Cancel----------------*/
                  ElevatedButton(
                      onPressed: (){
                        print(AppConstant.notes);
                        setState(() {

                        });
                      },
                      child: Text("Cancel")
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  /*----------Update-----------*/
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return UpdatePage();
                        }));
                      },
                      child: Text("Update")
                  ),
                  
                  /*---------------Remove----------------*/
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return RemoveTitle();
                        }));
                      },
                      child: Text("Remove")
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}