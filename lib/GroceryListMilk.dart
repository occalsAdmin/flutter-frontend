import 'package:flutter/material.dart';
import 'package:occal/product_detail_page.dart';


class GroceryListMilk extends StatelessWidget {
  final String name;
  late  int _counter =0;
  final int originalPrice;
  final int offerPrice;

  final String imageUrl;
  final String quantity;

  GroceryListMilk({
    required this.name,
    required this.quantity,
    required this.originalPrice,
    required this.offerPrice,

    required this.imageUrl})
  ;


  @override
  Widget build(BuildContext context) {
    return
      Container(
          padding:EdgeInsets.only(
            left: 15.0,
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              _buildProductItemCard(context),
              _buildProductItemCard(context),

            ],
          ));
  }

  _buildProductItemCard(BuildContext context) {
    return
      Container(
        width:150,
        child:
        InkWell(
            onTap: () {
              /*Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(),
            // Pass the arguments as part of the RouteSettings. The
            // DetailScreen reads the arguments from these settings.

          ),
        );*/
            },
            child:
            SizedBox(
                width: 150.0,
                height: 205.0,
                child:Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:10),
                      Container(
                          child: Image.network(
                            imageUrl,
                          ),
                          height:80.0,
                          width: 150
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                            Text(
                              quantity,
                              style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "    \Rs $originalPrice",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                Text(
                                  "    \Rs $offerPrice",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,

                                  ),
                                ),

                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(width:9),
                                  new Container(
                                    child: _counter==0?null:IconButton(
                                      icon: new Icon(Icons.remove,size:14),
                                      highlightColor: Colors.green,
                                      onPressed: (){

                                        if (_counter > 0) {
                                          _counter--;
                                        }

                                      },
                                    ),
                                  ),
                                  new Container(
                                      child: _counter!=0? Text('$_counter',                                                              style: TextStyle(
                                        fontSize: 15,
                                        color:Colors.green,
                                        fontWeight: FontWeight.bold,)
                                      ):
                                      InkWell(
                                        child:Container(

                                            padding: EdgeInsets.fromLTRB(5,3,5,3),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey.shade300,
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(3))
                                            ),
                                            child:Align(
                                                alignment:Alignment.center,
                                                child: Text(" +  ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      height:1.5, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                                                      color: Colors.green, //font color
                                                      backgroundColor: Colors.white, //background color
                                                      //letter spacing
                                                      //double underline
                                                      decorationColor: Colors.brown, //text decoration 'underline' color
                                                      decorationThickness: 1.5, //decoration 'underline' thickness
                                                      fontStyle: FontStyle.normal
                                                  ),
                                                ))),
                                        onTap:(){
                                          print("Hello");
                                          _counter++;
                                        },
                                      )),

                                  new Container(
                                    child:  _counter==0?null: IconButton(
                                      icon: new Icon(Icons.add,size:15),
                                      highlightColor: Colors.green,
                                      onPressed: (){
                                        _counter++;
                                      },
                                    ),
                                  ),

                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
      );
  }
}

