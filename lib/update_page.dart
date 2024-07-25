import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/appConstant.dart';

import 'dashboard_page.dart';
import 'home_Screen.dart';

class UpdatePage extends StatefulWidget{
  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
    TextEditingController indexController = TextEditingController();

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
            /*---------------Index----------------*/
            SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: indexController,
                  decoration: InputDecoration(
                      labelText: "Title No.",
                      hintText: "Enter Your title number to update..",
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
                      int index = int.parse(indexController.text.toString());
                      String title = titleController.text.toString();
                      String desc = descController.text.toString();
                      AppConstant.notes[index-1][title] = desc;
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