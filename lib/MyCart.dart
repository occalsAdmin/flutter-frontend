import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: SingleChildScrollView(


          child: Text("This is Cart page"),
          /* RaisedButton(
            child: Text(
              "Start new page",
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyCart()));
            },
          )*/
        )
    );
  }

}