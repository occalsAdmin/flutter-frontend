import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:occal/splash.dart';



class OtpPage extends StatefulWidget  {
  final Color? primaryColor;
  final Color? backgroundColor;
  final AssetImage backgroundImage;
  OtpPage({Key? key,  this.primaryColor = Colors.lightBlue,
    this.backgroundColor = Colors.white,
    this.backgroundImage = const AssetImage("assets/1.png"),}) ;


  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String text = '';
  late Timer _timer;
  int _start = 30;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void initState() {
    super.initState();
    /*final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor:Colors.greenAccent,
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);*/
    startTimer();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 60,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(width: 0, color: Theme.of(context).primaryColor),
            borderRadius:  BorderRadius.all(Radius.circular(18))
        ),
        child: Center(child: Text(text[position], style: TextStyle(color: Colors.black),)),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 50,
        decoration: BoxDecoration(
            color:HexColor("#F0FFFF"),
            border: Border.all(color: Theme.of(context).primaryColor, width:0),
            borderRadius:BorderRadius.all(Radius.circular(18))
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height:1000,
        decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/login.png"),
    fit: BoxFit.fill,
    ),
    ),
    child:Scaffold(

      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          decoration: BoxDecoration(

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[


                      Column(
                        children:[
                          SizedBox(height:30),

                  Container(
                    width: 140.0,
                    height: 130.0,
                    decoration: BoxDecoration(

                      color: HexColor("#202BC6"),

                    ),

                    alignment: Alignment.topLeft,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        IconButton(
                            onPressed: () {
Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back,color:Colors.white)),
                         Text(
                          "     OTP",
                          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color:Colors.white),
                        ),
SizedBox(height:10),
Container(
  alignment:Alignment.bottomCenter,
                        child:Text(
                          "  Verification",
                          style: TextStyle(fontSize:22.0, fontWeight: FontWeight.bold, color:Colors.white),
                        )),
                      ],
                    ),
                  ),
                  ]),




              Expanded(
                child: Column(

                  children: <Widget>[
                    SizedBox(height:140),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('OTP has been sent to your number', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400))
                    ),
                    SizedBox(height:70),
                    Container(
                      constraints: const BoxConstraints(
                          maxWidth: 500
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          otpNumberWidget(0),
                          otpNumberWidget(1),
                          otpNumberWidget(2),
                          otpNumberWidget(3),
                          otpNumberWidget(4),
                          otpNumberWidget(5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left:10.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          alignment: Alignment.center,
                          child:
                          Column(
                            children:[
                              Text("$_start"),
                              SizedBox(height:5),
                            Text(
                            "Didn't Get It ?",
                            style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height:5),
                          Text(
                            "Send It Again",
                            style: TextStyle(color:Theme.of(context).primaryColor,decoration: TextDecoration.underline),
                          ),]),
                        ),
                        onPressed: () => {

                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        splashColor:Theme.of(context).primaryColor,
                        color:Theme.of(context).primaryColor,
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left:130.0),
                              child: Text(
                                "Continue",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),


                          ],
                        ),
                        onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen())),
                        },
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width/2, height, width, height-200);
    path.lineTo(width, 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
class SuccessfulOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text("Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
        ),
      ),
    );
  }
}