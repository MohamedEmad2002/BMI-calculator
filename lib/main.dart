import 'package:bmicalculator/ui/screens/home.dart';
import 'package:bmicalculator/ui/screens/result.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
            canvasColor: Colors.black87,
        textTheme: const TextTheme(
          headline1: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold
        ),
      ),
    ),
        home: const ResultPage(age: 21,ismale: true,result: 155),);
  }
}