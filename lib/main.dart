// @dart=2.9
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:occal/LoginScreen.dart';
import 'package:occal/splash.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    statusBarColor:HexColor("#202BC6"),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Splash Screens',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(primaryColorDark:HexColor("#202BC6")),
        primaryColor:HexColor("#202BC6"),
      ),
      home: LoginScreen(),
    );
  }
}