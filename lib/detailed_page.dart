import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/appConstant.dart';

class DetailedPage extends StatelessWidget{
  int? mIndex;
  DetailedPage({required this.mIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(AppConstant.notes[mIndex!]['title']),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(child: Text(AppConstant.notes[mIndex!]['description'])),
      ),
    );
  }

}