import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Shoetile extends StatelessWidget {
  Shoe  shoe;
  void Function()? onTap;
  Shoetile({super.key,
  required this.shoe,
  required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //shoe  image 
      ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(shoe.imagepath)),

        // description 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25 ),
          child: Text(shoe.description,
          style: TextStyle(color: Colors.grey[600]),),
        ),
        // price and details 
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                // shoe name 
                Text(shoe.name,
                style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,),),
                const SizedBox(height: 5,),
                // price 
                Text('\$'+shoe.price,
                style:const  TextStyle(
                  color: Colors.grey,
                ),),
          
              ],
            ),
            // plus button 
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                  bottomRight: Radius.circular(20), ),
                ),
                child: Icon(Icons.add,
                color: Colors.white,)),
            ),
          ],),
        )
      ],),
    );
  }
}