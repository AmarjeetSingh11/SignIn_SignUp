import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signup_signpage/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 5),(){

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage()

          ));

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color: Colors.blueAccent,

        child: Center(
          child: Text(
            'Classico',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
