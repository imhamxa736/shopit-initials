import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
    this.product_detail_price,
    this.product_detail_old_price,
    this.product_detail_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.2,
        backgroundColor: Colors.green.shade900,
        title: Text('Shopit'),
        actions: <Widget>[
          new IconButton(icon:Icon(Icons.search,color: Colors.white,),onPressed: (){},),
          new  IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){},)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(

                color:Colors.white30,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_detail_price}",
                        style: TextStyle(color: Colors.green.shade900),),
                      ),

                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),




          // ======= = ===FIRST BUTTON===========
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
//                color: Colors.white70,
                textColor: Colors.grey,
                  elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text('Size'),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down,color: Colors.grey,),
                    ),
                  ],
                ),
                ),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){},
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Color'),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down,color: Colors.grey,),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(

                child: MaterialButton(onPressed: (){},
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Qty'),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down,color: Colors.grey,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //================SECOND BUTTON================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.green.shade900,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(child: new Text('Buy Now',
                          style: TextStyle(fontSize: 16,
                              color:Colors.white,
                              fontWeight: FontWeight.bold),)),
                      ),

                    ],
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
