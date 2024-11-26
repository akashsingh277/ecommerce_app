import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homepage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/image/nike.png',
                height: 240,
                ),
              ),
              const SizedBox(height: 24),
          
              // title
          const Text('Just Do It',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          
              // subtitle
          const Text('Brand new sneakers and custom kicks made with premium quality',
          style: TextStyle(
             color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,),
          
          // startbutton 

          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage()
            ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Text('Shop Now',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),),
                ),
              ),
            ),
          ),
          
          ],),
        ),
      ),
    );
  }
}