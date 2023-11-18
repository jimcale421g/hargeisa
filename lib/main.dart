import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hargeisa/users/authintication/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

Future<void> someFutureFunction() async {
  // Your async code here
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hargeisa City',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home: FutureBuilder(
        future: someFutureFunction(),
        builder: (context, dataSnapshot)
        {
          return LoginScreen();
        },
      ),
    );
  }
}