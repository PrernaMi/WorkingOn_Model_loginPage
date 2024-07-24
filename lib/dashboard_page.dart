import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page_adding_to_list/add_title_page.dart';
import 'package:login_page_adding_to_list/appConstant.dart';
import 'package:login_page_adding_to_list/detailed_page.dart';
import 'package:login_page_adding_to_list/model_class.dart';

class DashBoardPage extends StatelessWidget{
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
              height: 600,
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
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ),
          FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddDetails();
                }));
              },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}