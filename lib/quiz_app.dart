import 'package:flutter/material.dart';
import 'package:quiz_application/Screens/home_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      /* initialRoute: '/',
       routes: {
        //'/': (context) => Homescreen(),
        '/Result': (context) => ResultScreen(),
       },*/
     home: HomeScreen()  //ResultScreen()
      );
     
  }
}