import 'package:flutter/material.dart';
import 'package:flutter_application_1/allthemes.dart';
import 'package:flutter_application_1/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  bool themeValue = false;
  Widget build(BuildContext context) {
    
    void toggleTheme(){
      setState(() {
        themeValue = !themeValue;
      });
    }
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: Allthemes().darkTheme,
      theme: Allthemes().lighTheme,
      themeMode: themeValue == true ? ThemeMode.dark : ThemeMode.light ,
      home: HomeScreen(toggleTheme: toggleTheme,Valuee: themeValue,),
    );
  }
}
