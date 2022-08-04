import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:occal/LoginScreen.dart';


import 'HomeScreen.dart';
import 'animation_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height:000,
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage("assets/splash.png"),
    fit: BoxFit.fill,
    ),
    ),
    child:Scaffold(
        backgroundColor: Colors.transparent,
      body:

    Stack(
    children: [

    Align(
    alignment: Alignment.center,
    child: Container(
    width:250,
    height: 150.0,
    color: Colors.transparent,
    child: new Container(

    child: new Center(
    child:  Image.asset('assets/logo.png'),
    )
    ),
    ),
    ),


    ])


    ));
  }
}