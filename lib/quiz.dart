import 'package:flutter/material.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/start_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  Widget? activeScreen ;

  @override
  void initState() {
  activeScreen =  StartScreen(switchScreen);
     super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen=QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      
    body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 89, 9, 123),
            Color.fromARGB(255, 61, 9, 124),
          ])),
          child:   
             activeScreen,
          ),
    ),
  );
  }
}