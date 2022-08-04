import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ConfirmAddress.dart';


class OrderPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}
class _CartPageState extends State<OrderPage> {
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
                    "                Order",
                    style:TextStyle(color:Colors.black)
                ),


                SizedBox(width:110),

                IconButton(
                  icon: Icon(
                    Icons.quiz,
                    size: 40.0,
                    color:Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),])
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[createHeader(), footer(context)],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          SizedBox(height:40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                    IconButton(
                        onPressed: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                        },
                        icon: Icon(Icons.person,color:Theme.of(context).primaryColor)),
                    Column(
                      children:[
                    RichText(
                        text: TextSpan(
                            children: [

                              TextSpan(
                                text: "Hi Iam John",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,

                                ),
                              )
                            ]
                        )),

                    RichText(
                        text: TextSpan(
                            children: [

                              TextSpan(
                                text: "Your Delivery Partner",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700,

                                ),
                              )
                            ]
                        )),
                        ]),
                        SizedBox(width:200),
                      ]),


        ],
      ),

     ]),
          SizedBox(height:10),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          IconButton(
                              onPressed: () {
                                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                              },
                              icon: Icon(Icons.vaccines,color:Theme.of(context).primaryColor)),
                          Column(
                              children:[
                                RichText(
                                    text: TextSpan(
                                        children: [

                                          TextSpan(
                                            text: "Vaccinated",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,

                                            ),
                                          )
                                        ]
                                    )),


                              ]),
                          SizedBox(width:200),
                        ]),

                  ],
                ),

              ]),
         Divider(color:Colors.grey,thickness:1),

              Row(

                  children:[
                    IconButton(
                        onPressed: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                        },
                        icon: Icon(Icons.shopping_bag,color:Theme.of(context).primaryColor)),
                    Row(
                        children:[
                          RichText(
                              text: TextSpan(
                                  children: [

                                    TextSpan(
                                      text: "OrderId:43562789087",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )),
SizedBox(width:70),
                          Row(
                            children:[
                          RichText(
                              text: TextSpan(
                                  children: [

                                    TextSpan(
                                      text: "Order Details",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                    )),
                              IconButton(
                                  onPressed: () {
                                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                                  },
                                  icon: Icon(Icons.arrow_forward_ios,color:Theme.of(context).primaryColor)),
                              ])
                        ]),

                  ]),


          Divider(color:Colors.grey,thickness:1),

          Row(

              children:[
                IconButton(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                    },
                    icon: Icon(Icons.pin_drop,color:Theme.of(context).primaryColor)),
                Column(
                    children:[
                      RichText(
                          text: TextSpan(
                              children: [

                                TextSpan(
                                  text: "Delivering To:",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,

                                  ),
                                )
                              ]
                          )),

                      Row(
                          children:[
                            RichText(
                                text: TextSpan(
                                    children: [

                                      TextSpan(
                                        text: "Whitefield,Hoodi,560048",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,

                                        ),
                                      )
                                    ]
                                )),

                          ]),

                    ]),

              ]),
          SizedBox(height:75),
          Card(
            color: Colors.orange,
            elevation: 5,
            child: ListTile(

              title: Text('                 Your Order Has Been Packed'),


            ),
          ),


        ]));
  }

  createHeader() {
    return Container(
      color:HexColor("#F0FFFF"),
      alignment: Alignment.topLeft,
      child:
          Column(
        children:[
          SizedBox(height:20),
      Text(

        "Approximate arrival Time Of the items",

      ),
          SizedBox(height:10),
          Text(

            "18:30-18:40",
            style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)

          ),
          SizedBox(height:10),
          Container(
            margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
            width: 80,
            height: 77,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color:HexColor("#051094"),

                image: DecorationImage( fit:BoxFit.contain,image:NetworkImage("https://img.freepik.com/premium-vector/counter-with-canopy-local-market-vegetables-fruits-honey-sale-harvest_519070-74.jpg?w=2000"))),
          ),
          SizedBox(height:10),
          Text(

              "OCCALS Recieved Your Orders",
              style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)

          ),
          SizedBox(height:15),
          Row(

            children:[
              Expanded(
                  child: Divider(color:Colors.greenAccent,thickness:5)
              ),
              SizedBox(width:10),
              Expanded(
                  child: Divider(color:Colors.orangeAccent,thickness:5)
              ),
              SizedBox(width:10),
              Expanded(
                  child: Divider(color:Colors.grey,thickness:5)
              ),
              SizedBox(width:10),
              Expanded(
                  child: Divider(color:Colors.grey,thickness:5)
              ),
              SizedBox(width:10),
            ]),
          SizedBox(height:10),
          Row(

              children:[
                Expanded(
                    child:  Text("    Getting",style:TextStyle(color:Colors.greenAccent)),
                ),
                SizedBox(width:10),
                Expanded(
                    child:Text("    Collecting",style:TextStyle(color:Colors.orangeAccent)),
                ),
                SizedBox(width:10),
                Expanded(
                    child: Text("     Delivery",style:TextStyle(color:Colors.grey)),
                ),
                SizedBox(width:10),
                Expanded(
                    child: Text("        Done",style:TextStyle(color:Colors.grey)),
                ),
                SizedBox(width:10),
              ]),
          SizedBox(height:60),
        ]),
      margin: EdgeInsets.only(left: 12, top: 12),
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