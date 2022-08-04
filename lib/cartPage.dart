import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:occal/SubscriptionScreen.dart';

import 'ConfirmAddress.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}
class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title:
          Row(
            children:[
              Text(
            "                 Cart(3)",
              style:TextStyle(color:Colors.black)
          ),


SizedBox(width:60),

          Text(
          "Empty Cart",
          style:TextStyle(color:Theme.of(context).primaryColor,fontSize:15)
      ),])
      ),
      body:
      Container(


    child:Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[createHeader(), createSubTitle(), createCartList(),createCartList1(),createCartList2(), footer(context)],
          );
        },
      )),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(thickness:2),
          SizedBox(height:20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                child:
                    Column(
                      children:[
                Text(
                  "Item Total(Inc Taxes)",
                  style:TextStyle(color:Colors.black,fontSize: 12)

                ),
                        Text(
                            "Delivery Cahrge",
                            style:TextStyle(color:Colors.black,fontSize: 12)

                        ),
                        Text(
                            "Bill Total",
                            style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15)

                        ),
                      ])
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child:
                Column(
        children:[
    Text(
                  "\Rs 90.00",

                ),
                Text(
                  "\Rs   0.00",

                ),
                Text(
                  "\Rs 90.00",

                ),
                ])

              ),
            ],
          ),

SizedBox(height:40),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => ConfirmAddress()));
            },
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Text(
              "Add Address To Proceed",
style:TextStyle(color:Colors.white)
            ),
          ),

        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Container(
      color:Colors.lightBlueAccent,
      height:50,

      alignment: Alignment.center,
      child: Text(

        "Rs 08 Saved On this Order",

      ),
      margin: EdgeInsets.only(left: 12, top: 12,right: 12),
    );
  }

  createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "",

      ),
      margin: EdgeInsets.only(left: 12, top: 4),
    );
  }

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 1,
    );
  }
  createCartList1() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem1();
      },
      itemCount: 1,
    );
  }
  createCartList2() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem2();
      },
      itemCount: 1,
    );
  }
  createCartListItem1() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#9188e5"),
                    image: DecorationImage(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bx2gY1KjQPTwoNZ7ndPfXlmf0AsCvjIqxA&usqp=CAU"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Milk Bread",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\1 Packet ",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Container(
                                color: Theme.of(context).primaryColor,
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    color: Theme.of(context).primaryColor,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
style:TextStyle(color:Colors.white)
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                            ),
                            Column(
                                children:[
                                  Text(
                                      "\Rs 40",
                                      style: TextStyle(
                                        color:Colors.black,
                                        fontWeight: FontWeight.bold,)
                                  ),
                                  Text(
                                      "\Rs 45",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:Theme.of(context).primaryColor,
                                        decoration: TextDecoration.lineThrough,)
                                  ),])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),


      ],
    );
  }
  createCartListItem2() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#051094"),
                    image: DecorationImage(image:NetworkImage("https://m.media-amazon.com/images/I/91UkbkuEq8L._SX522_.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Onion",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\250 gms",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Container(
                                color: Theme.of(context).primaryColor,
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    color: Theme.of(context).primaryColor,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                        style:TextStyle(color:Colors.white)
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.white,
                                  ),

                                ],
                              )),
                            ),
                            Column(
                                children:[
                                  Text(
                                      "\Rs 30",
                                      style: TextStyle(
                                        color:Colors.black,
                                        fontWeight: FontWeight.bold,)
                                  ),
                                  Text(
                                      "\Rs 32",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:Theme.of(context).primaryColor,
                                        decoration: TextDecoration.lineThrough,)
                                  ),])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              ),

            ],
          ),
        ),


      ],
    );
  }
  createCartListItem() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#051094"),
                    image: DecorationImage(image:NetworkImage("https://www.bigbasket.com/media/uploads/p/xxl/40149829_4-heritage-total-curd.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Heritage Curd",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(

    child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\One Packet",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                                child:Container(
    color: Theme.of(context).primaryColor,child:
    Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    color: Theme.of(context).primaryColor,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                        style:TextStyle(color:Colors.white)
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.white,
                                  ),

                                ],
                              )),
                            ),
                            Column(
                              children:[
                            Text(
                              "\Rs 20",
                                style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,)
                            ),
                                Text(
                                    "\Rs 22",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:Theme.of(context).primaryColor,
                                      decoration: TextDecoration.lineThrough,)
                                ),])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),


      ],
    );
  }
}