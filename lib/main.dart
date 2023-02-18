import 'package:flutter/material.dart';
import 'package:untitled1/Bmi_Resulte.dart';
import 'package:untitled1/Bmi_calculator.dart';
import 'package:untitled1/Counter_Screen.dart';
import 'package:untitled1/List_view.dart';
import 'package:untitled1/Messenger_screen.dart';
import 'package:untitled1/Screen_instagram.dart';
import 'package:untitled1/Sheet4.dart';
import 'package:untitled1/Sheet5.dart';
import 'package:untitled1/bottomnavigationbar.dart';

import 'Moduls/login/LoginScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       home: BottomBar(),
    );
  }
}

