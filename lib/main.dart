import 'package:flutter/material.dart';
import 'package:realstate/detail.dart';
import 'package:realstate/home.dart';
import 'package:realstate/login.dart';
import 'package:realstate/whish.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhishScreen(),
    );
  }
}