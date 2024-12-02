import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Shoetile extends StatelessWidget {
  Shoe  shoe;
   Shoetile({super.key,
  required this.shoe,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        //shoe  image 
      ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(shoe.imagepath)),

        // description 
        
      ],),
    );
  }
}