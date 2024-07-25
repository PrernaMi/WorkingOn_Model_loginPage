import 'package:flutter/material.dart';
import 'package:login_page_adding_to_list/dashboard_page.dart';
import 'package:login_page_adding_to_list/home_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Page",
      home: DashBoardPage(),
    );
  }
}


