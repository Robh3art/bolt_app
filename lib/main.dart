import 'package:bolt_app/screens/login.dart';
import 'package:bolt_app/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:bolt_app/screens/home_page.dart';
import 'package:bolt_app/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Bolt',
      theme: ThemeData(
    
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashScreen(),
    );
  }
}


