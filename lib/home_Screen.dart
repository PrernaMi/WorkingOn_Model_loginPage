import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/add_title_page.dart';
import 'package:login_page_adding_to_list/remove_page.dart';
import 'package:login_page_adding_to_list/update_page.dart';

import 'appConstant.dart';
import 'dashboard_page.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Screen")),
      ),
      backgroundColor: Colors.greenAccent.shade100,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*---------------Add----------------*/
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AddDetails();
                      }));
                      // print(AppConstant.notes);
                      setState(() {

                      });
                    },
                    child: Text("Add")
                ),


              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

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
        ),
      )
    );
  }
}