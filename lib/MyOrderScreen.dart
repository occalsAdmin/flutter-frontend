import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrderScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: SingleChildScrollView(


          child: Text("This is Order page"),
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