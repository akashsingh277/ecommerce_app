import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale 
  List<Shoe> shoeShop =[
    Shoe(name: 'Zoom Freak', 
    price: '235', 
    imagepath: 'lib/image/JORDAN1.png',
     description: 'Aestheticest Shoes'),
     Shoe(name: 'Air Jordan', 
    price: '255', 
    imagepath: 'lib/image/jordan2.png',
     description: 'Aestheticest Shoes'),
     Shoe(name: 'Travis scott', 
    price: '265', 
    imagepath: 'lib/image/JORDAN4.png',
     description: 'Aestheticest Shoes'),
     Shoe(name: 'KD treys', 
    price: '325', 
    imagepath: 'lib/image/JORDAN5.png',
     description: 'Aestheticest Shoes'),
  ];


  // list  of shoes in users cart 
  List<Shoe> userCart=[];

  // list shoes for sale 
List<Shoe> getShoeList(
){
  return shoeShop;
}

  // get cart
List<Shoe> getUserCart(){
  return userCart;
}

  // add items to cart 
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}

  // remove items from cart  
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}