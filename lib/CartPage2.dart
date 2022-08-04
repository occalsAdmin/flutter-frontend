import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:occal/SubscriptionScreen.dart';

import 'ConfirmAddress.dart';


class CartPage2 extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}
class _CartPageState extends State<CartPage2> {
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
                    "                 Cart(2)",
                    style:TextStyle(color:Colors.black)
                ),


                SizedBox(width:60),

                Text(
                    "Empty Cart",
                    style:TextStyle(color:Theme.of(context).primaryColor,fontSize:15)
                ),])
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[createHeader(), createSubTitle(), createCartList(),createCartList1(),createCartList2(), footer1(context),footer(context),footer2(context),footer3(context)],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      color:HexColor("#89CFF0"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[


          SizedBox(height:10),
          Container(
              margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
            color:Colors.white,



          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Container(
                color:Colors.white,
                  margin: EdgeInsets.only(left: 20),
                  child:
                  Column(
                      children:[
                        SizedBox(height:10),
                        Text(
                            "Item Total(Inc Taxes)",
                            style:TextStyle(color:Colors.black,fontSize: 12)

                        ),
                        SizedBox(height:10),
                        Text(
                            "Delivery Cahrge",
                            style:TextStyle(color:Colors.black,fontSize: 12)

                        ),
                        SizedBox(height:10),
                        Text(
                            "Bill Total",
                            style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15)

                        ),
                        SizedBox(height:10),
                      ])
              ),
              Container(
                  color:Colors.white,
                  margin: EdgeInsets.only(right: 30),
                  child:
                  Column(
                      children:[
                        SizedBox(height:10),
                        Text(
                          "\Rs 90.00",

                        ),
                        SizedBox(height:10),
                        Text(
                          "\Rs   0.00",

                        ),
                        SizedBox(height:10),
                        Text(
                          "\Rs 90.00",

                        ),
                        SizedBox(height:10),
                      ])

              ),
            ],
          )),
          SizedBox(height:10),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Text('You Will Get Your Item'),
              title: Text('On 4th July and 8th July Between 8 to 10am',style:TextStyle(fontSize: 10)),

              trailing: Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#9188e5"),
                    image: DecorationImage( fit:BoxFit.fill,image:NetworkImage("https://thumbs.dreamstime.com/b/delivery-man-riding-motorcycle-delivery-box-d-rendering-delivery-man-riding-motorcycle-delivery-box-d-rendering-217000492.jpg"))),
              ),
            ),
          ),

           ],
      ),
      margin: EdgeInsets.only(top: 0),
    );
  }
  footer1(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(thickness:4,color:HexColor("#ADD8E6")),
          SizedBox(height:10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Text(
                    "Available Offers/Coupons",
                    style:TextStyle(color:Colors.black,fontSize:20)

                ),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 20.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
          SizedBox(height:10),
          Divider(thickness:4,color:HexColor("#ADD8E6")),





        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }
  footer2(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[


          SizedBox(height:20),

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
          SizedBox(height:10),
        ],
      ),
      margin: EdgeInsets.only(top: 0),
    );
  }
  footer3(BuildContext context) {
    return Container(
      color:HexColor("#89CFF0"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[


          SizedBox(height:10),


          Text(
              "Cancelation Policy",
              style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
          ),
          SizedBox(height:10),
          Text('A cancellation policy dictates how much refund you can get if you cancel the booking and how early you should cancel it, if you want a full refund,\n\nIf you want to know what your refund will be, start cancelling your reservation and we’ll show you a detailed breakdown. Depending on the length of your stay, when you cancel, and the cancellation policy that applies to your reservation, you may get a partial refund if you cancel after check-in – learn more about different cancellation policies.')
        ],
      ),
      margin: EdgeInsets.only(top: 0),
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
      margin: EdgeInsets.only(left: 0, top: 0,right: 0),
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