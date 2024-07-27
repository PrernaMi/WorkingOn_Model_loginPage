import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/appConstant.dart';
import 'package:login_page_adding_to_list/model_class.dart';
import 'dashboard_page.dart';
import 'home_Screen.dart';

class UpdatePage extends StatefulWidget{
  int mIndex;
  UpdatePage({required this.mIndex});
  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Update your title")),
      ),
      backgroundColor: Colors.greenAccent.shade100,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            /*---------------Title----------------*/
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
            /*---------------Description----------------*/
            SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: descController,
                  decoration: InputDecoration(
                      labelText: "Updated Description",
                      hintText: "Enter Your Description to update..",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                )),
            SizedBox(height: 30,),
            /*---------------Update----------------*/
            Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      String title = titleController.text.toString();
                      String desc = descController.text.toString();
                      AppConstant.notes[widget.mIndex] = UserModel(
                          title: title,
                          description: desc
                      ).toMap();
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DashBoardPage();
                      }));
                      setState(() {

                      });
                    },
                    child: Text("Update")
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomeScreen();
                  }));
                }, child: Text("Home"))
              ],
            )
          ],
        ),
      ),
    );
  }
}