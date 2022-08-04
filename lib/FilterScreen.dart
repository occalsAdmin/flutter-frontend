import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FilterScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:
          Row(
              children:[
                IconButton(
                  icon: Icon(Icons.arrow_back),

                  onPressed: () => Navigator.of(context).pop(),
                  /* Clear the search field */
                ),
                SizedBox(width:3),
                Container(
                  width: 232,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(5)),

                  child:


                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            /* Clear the search field */
                          },
                        ),
                        hintText: 'Search...',
                        border: InputBorder.none),
                  ),
                )]),

          backgroundColor: Colors.lightBlue,
          /* leading: IconButton(
            splashColor: Colors.grey,
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),*/
          actions: <Widget>[


            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.sort)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilterScreen(),
                      // Pass the arguments as part of the RouteSettings. The
                      // DetailScreen reads the arguments from these settings.

                    ),
                  );
                },
                icon: Icon(Icons.filter_alt)),
            /*PopupMenuButton<String>(
                onSelected: onSelect,
                itemBuilder: (BuildContext context) {
                  return myMenuItems.map((String choice) {
                    return PopupMenuItem<String>(
                      child: Text(choice),
                      value: choice,
                    );
                  }).toList();
                }),*/
          ],
        ),
        body: SingleChildScrollView(


          child: Text("This is Filter Page"),
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