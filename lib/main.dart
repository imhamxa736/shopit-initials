import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopit/components/horizontal_listview.dart';

import 'package:shopit/components/products.dart';


void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

Widget image_carousel = new Container(
  height: 200.0,
  child: new Carousel(
    boxFit: BoxFit.cover,
    images:[
      AssetImage('images/c3.jpg',),
      AssetImage('images/c2.jpg'),
      AssetImage('images/c1.jpg'),
      AssetImage('images/c4.jpg'),
      AssetImage('images/c5.jpg'),

    ],
    autoplay: false,
//    animationCurve: Curves.fastOutSlowIn,
//    animationDuration: Duration(milliseconds: 1000),
  dotSize: 4,
      dotColor: Colors.green.shade900,

  ),
);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.green.shade900,
        title: Text('Shopit'),
        actions: <Widget>[
          new IconButton(icon:Icon(Icons.search,color: Colors.white,),onPressed: (){},),
         new  IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){},)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
new UserAccountsDrawerHeader(accountName: Text('Hamza Idrees'),
    accountEmail: Text('Hamzaidrees736@gmail.com'),

  currentAccountPicture: GestureDetector(
    child: new CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,),
    ),
  ),
  decoration: new BoxDecoration(
    color: Colors.green.shade900
  ),
),

//body

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),


Divider(color: Colors.green,),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green.shade900,),
              ),
            ),





          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),

          //horizontal listview begins here
HorizontalList(),

new Padding(padding:const EdgeInsets.all(20.0),
child: new Text('Recent Products'),),

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
