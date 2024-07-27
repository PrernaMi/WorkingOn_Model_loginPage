import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page_adding_to_list/add_title_page.dart';
import 'package:login_page_adding_to_list/appConstant.dart';
import 'package:login_page_adding_to_list/detailed_page.dart';
import 'package:login_page_adding_to_list/model_class.dart';
import 'package:login_page_adding_to_list/remove_page.dart';
import 'package:login_page_adding_to_list/update_page.dart';

import 'home_Screen.dart';

class DashBoardPage extends StatefulWidget{
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Center(child: Text("Notes")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.greenAccent.shade100,
              child: ListView.builder(
                itemCount: AppConstant.notes.length,
                  itemBuilder: (_,Index){
                  var eachData = UserModel.toModel(
                    AppConstant.notes[Index]
                  );
                    return Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DetailedPage(mIndex: Index);
                            }));
                          },
                          child: ListTile(
                            title: Text(eachData.title??''),
                            subtitle: Text(eachData.description??''),
                            trailing: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return UpdatePage(mIndex: Index);
                                }));
                              },
                                child: Icon(Icons.edit)),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ),
          Column(
            children: [
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
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  }, child: Text("Home")),
                ],
              )
            ],
          ),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}