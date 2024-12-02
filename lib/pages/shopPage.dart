import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

import '../components/shoetile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        style: TextStyle(color: Colors.grey[100]),),
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
          children: const [Text('HotPicks',
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
          Shoe shoe =Shoe(name: 'Air JOrdan 1 Shadow',price:'300', imagepath:'lib/image/JORDAN1.png' ,description: 'cool shoe',);
          return Shoetile(
            shoe: shoe,
          );
        },),),
    ],);
  }
}