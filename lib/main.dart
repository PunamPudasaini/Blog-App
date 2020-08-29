import 'package:blogapp/page/authPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Blog App",
    debugShowCheckedModeBanner: false,
    home: AuthPage(),
    theme: ThemeData(
      primarySwatch: Colors.red,


    ),



  ));
}