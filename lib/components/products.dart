import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopit/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list= [
    {
      "name":"Blazer",
      "picture": "images/products/blazer.jpg",
      "old_price":80,
      "price":90
    },

    {
      "name":"Girls Wear",
      "picture": "images/products/girlshirts.jpg",
      "old_price":60,
      "price":80
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length ,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
        return Single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
     });
  }
}

class Single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({this.product_name,this.prod_picture,this.prod_old_price,this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name,
        child: Material
          (child: InkWell(onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>new ProductDetails(
              product_detail_name: product_name,
              product_detail_price: prod_price,
              product_detail_old_price: prod_old_price,
              product_detail_picture: prod_picture,
            ))) ,
        child:GridTile(
      footer: Container(
        color: Colors.white30,
        child: ListTile(
          leading: Text(product_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          title: Text("\$$prod_price",
            style: TextStyle(
            color: Colors.green.shade900,
                fontWeight: FontWeight.w800),
          ),
          subtitle:Text(
            "\$$prod_old_price",
            style: TextStyle(
             color: Colors.black45,
                fontWeight: FontWeight.w800,
decoration: TextDecoration.lineThrough
            ),
          ),
        ),
      ),
          child: Image.asset(prod_picture,fit: BoxFit.cover,),),
      ),
      ),
      ),
    );
  }
}
