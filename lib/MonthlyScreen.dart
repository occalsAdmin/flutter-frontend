import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';


import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:hexcolor/hexcolor.dart';


import 'dart:convert';
import 'dart:io';

import 'TimeSlotScreen.dart';

class MonthlyScreen extends StatefulWidget  {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<MonthlyScreen> {



  late String child = "";
  @override
  void initState() {
    super.initState();
    check_if_already_login();



  }
  @override
  void dispose() {

    super.dispose();
  }
  void check_if_already_login() async {



    setState(() {

    });
  }




  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: HexColor("#590694")
    ));
    return


      Scaffold(
          backgroundColor: Colors.white,

          body:


          Column(
              children:[
                SizedBox(height:20),


                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [

                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
                                        child:  Icon(
                                            Icons.yard_outlined,
                                            size: 22.0,
                                            color:Colors.black87
                                        ),


                                      ),
                                    ),

                                    TextSpan(
                                      text: "   Choose Your Plan",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                SizedBox(height:20),
                SizedBox(height:20),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.send),
                    title: Text('2 Months'),
                    subtitle: Text('Rs 150'),
                    trailing: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimeSlotScreen()));
                      }, //**this line is underlined in red. Error is here**
                      color: HexColor("#9188e5"),
                      child: const Text('Buy Now',style:TextStyle(color:Colors.white)),
                    ),
                  ),
                ),





                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.send),
                    title: Text('6 Months'),
                    subtitle: Text('Rs 500'),
                    trailing: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimeSlotScreen()));
                      }, //**this line is underlined in red. Error is here**
                      color: HexColor("#9188e5"),
                      child: const Text('Buy Now',style:TextStyle(color:Colors.white)),
                    ),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.send),
                    title: Text('10 Months'),
                    subtitle: Text('Rs 810'),
                    trailing: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimeSlotScreen()));
                      }, //**this line is underlined in red. Error is here**
                      color: HexColor("#9188e5"),
                      child: const Text('Buy Now',style:TextStyle(color:Colors.white)),
                    ),
                  ),
                ),


              ])
      );
  }

}