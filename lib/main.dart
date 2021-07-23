import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
void main(){
  runApp(MaterialApp(
    title: "RentAll",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel=new Container(
    height: 275.0,
    width: 500.0,
    child:Carousel(
      boxFit: BoxFit.contain,
      images:[
        AssetImage('Images/Dhoni.jpg'),
        AssetImage('Images/Kane.jpg'),
        AssetImage('Images/Kallis.jpg'),
        AssetImage('Images/Steve-Waugh.jpg'),
        AssetImage('Images/maxwell-kxip.jpg'),
        AssetImage('Images/Jos_Buttler_AP.jpg'),
        ],
      autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration:Duration(milliseconds: 1000),
    dotSize: 4.5,
    dotColor: Colors.red,
    ),
  );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Rentall"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: new ListView(
        children:<Widget> [

          image_carousel,
          new Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),

                child: Text(
                "₹ 349",
                  textAlign:TextAlign.left,
                 style: TextStyle(
                   fontSize: 40.5,
                   fontWeight: FontWeight.normal,
                 ),
                ),
              ),
            ],
          ),
          new Column(

            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),


                child:RichText(text: TextSpan(
                  text:'MRP:',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.brown,
                  ),
                    children: const <TextSpan>[
                    TextSpan(text: '₹699.00', style: TextStyle(fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.black87,),
                    ),
                    TextSpan(text: ' Save ₹350.00',style: TextStyle(color: Colors.red,
                      fontStyle: FontStyle.italic,
                    ),
                    ),
                  ],

                ),
                )
                  
                  
                
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),


                child: RichText(text:TextSpan(
                    text:"FREE Delivery: ",
                    style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                  children: const <TextSpan>[
                    TextSpan(text:"Day,Month,Date",
                    style: TextStyle(color: Colors.black87,
                    fontWeight: FontWeight.bold),
                    )
                  ]
                )

                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),


                child: Text(
                  "No Minimum order value for first order in this category",
                  textAlign:TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),


                child: RichText(text:TextSpan(text: "Fastest Delivery:",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.indigo,
                ),
                  children: const <TextSpan>[
                    TextSpan(text:'Tomorrow',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                  ]
                ),
                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),


                child: Text(
                  "Order within x hrs and y mins Details",
                  textAlign:TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Divider(color: Colors.black,
              thickness: 5,),
              Icon(Icons.shop_rounded,
              size: 35,),

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),

                child: Text(
                  "Save Extra with 5 offers",

                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          new Column(

            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Divider(
                color: Colors.black,
                thickness: 2.5,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),

                child: RichText(text:TextSpan(
                  text:"Bank Offer: ",
                  style: TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  children: const <TextSpan>[
                    TextSpan(text:"Get Rs. 500 worth Gift Card on a minimum purchase of Rs 10000 with HDFC Bank",
                      style: TextStyle(fontWeight: FontWeight.normal,
                          color: Colors.black87),
                    )
                  ],
                ),

                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Divider(color: Colors.black,
              thickness: 2.5,
              height: 1,),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: RichText(text:TextSpan(
                    text: 'No Cost EMI: ',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Avail No Cost EMI on select cards for orders above ₹3000',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color:Colors.black,
                      ),
                      ),
                    ]
                ),
                ),

              ),
              Divider(color: Colors.black,
              thickness: 2.5,)
            ],
          )
        ]

      ),
    );

  }
}






