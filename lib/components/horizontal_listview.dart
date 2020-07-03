import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/cats1.jpg',
            image_caption: 'shoes',
          ),

          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Formal',
          ),

          Category(
            image_location: 'images/cats/girls.jpg',
            image_caption: 'Girls',
          ),

          Category(
            image_location: 'images/cats/hats.png',
            image_caption: 'Hats',
          ),

          Category(
            image_location: 'images/cats/shirt.jpg',
            image_caption: 'Shirts',
          ),

          Category(
            image_location: 'images/cats/shorts.png',
            image_caption: 'Shorts',
          ),

          Category(
            image_location: 'images/cats/trouser.jpg',
            image_caption: 'Trousers',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location,this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(

      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,width: 100.0,height: 80.0,),
        subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,style: new TextStyle(fontSize:12.0),),
        ),
      ),
    ) ,
    ),);
  }
}
