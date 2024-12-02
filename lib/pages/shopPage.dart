import 'dart:js_util';

import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoetile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to Cart 
     void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
      // shoe successfully added 
      showDialog(
        
        context: context, 
        builder: (context) => AlertDialog(
          title: Text('Successfully Added To Cart'),
          content: Text('Check your Cart'),
        ));
     }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context,value,child)=> Column(children: [
      // search box 
   Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(color: Colors.grey[200],
    borderRadius: BorderRadius.circular(8)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
        Text('Search',
        style: TextStyle(color: Colors.grey[500]),),
        Icon(Icons.search),
      ],
    ),
   ),


      // message 
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0,
      ),
      child: Text('Everyone flies... some fly longer than others',
      style: TextStyle(color: Colors.grey[600]),),
    ),

      // hot picks 
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [Text('Hot Picks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),),
          Text('See all',
          style: TextStyle(
            fontWeight: FontWeight.bold,color:Colors.blue, 
          ),)],
        ),
      ),


      const SizedBox(height: 10,),
      Expanded(child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          // create a shoe 
          Shoe shoe =value.getShoeList()[index];
          // return the shoe 
          return Shoetile(
            shoe: shoe,
            onTap: () => addShoeToCart(shoe),
          );
        },
        ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 25.0,left: 25.0,right: 25.0),
        //   child: Divider(
        //     color: Colors.white,
        //   ),
        // ),
    ],), );
  }
}