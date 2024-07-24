import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/appConstant.dart';

import 'dashboard_page.dart';

class RemoveTitle extends StatefulWidget{
  @override
  State<RemoveTitle> createState() => _RemoveTitleState();
}
class _RemoveTitleState extends State<RemoveTitle> {
  @override
  Widget build(BuildContext context) {
    TextEditingController indexController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text("Remove title"),
      ),
      body: Center(
        child: Column(
        children: [
          SizedBox(height: 100,),
            /*---------------title----------------*/
          SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: indexController,
                decoration: InputDecoration(
                    labelText: "Index",
                    hintText: "Enter Your title index to delete..",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
              )),
          SizedBox(height: 30,),
          ElevatedButton(
          onPressed: (){
            int index = int.parse(indexController.text.toString());
            AppConstant.notes.removeAt(index-1);
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DashBoardPage();
            }));
            setState(() {

            });
          },
              child: Text("Remove")
          )
        ],
        ),
      ),
    );
  }
}