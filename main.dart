import 'package:flutter/material.dart';
import 'pages/insta_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Try Instagram UI Clone',
      home : InstaHome(),
      debugShowCheckedModeBanner : false,
    );
  }
}