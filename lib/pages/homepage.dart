
import 'package:flutter/material.dart';

import '../components/bottomnavbar.dart';
import 'cartpage.dart';
import 'shopPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
 void navigateBottomBar(int index
 ){
  setState(() {
    _selectedIndex=index;
  });
 }
  
  // pages to display 
  final List<Widget> _pages =[
    // shop page 
    const ShopPage(),

    // cart pagr
    const cartPage(),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)=> navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: const Icon(Icons.menu,
            color: Colors.black,),
          ),
          onPressed: (){
        Scaffold.of(context).openDrawer();
          },),
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          // logo
          Column(children: [DrawerHeader(child: Image.asset('lib/image/nike_PNG18.png',
          color: Colors.white,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0 ),
            child: Divider(
              color: Colors.grey[800],
            ),
          ),
          // list tiles 
          const Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(
              Icons.home,
            color: Colors.white,),
            title: Text('Home',
            style: TextStyle(color: Colors.white),),
                    ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(
              Icons.info,
            color: Colors.white,),
            title: Text('About',
            style: TextStyle(color: Colors.white),),
                    ),
          ),],),
          const Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 25.0),
            child: ListTile(leading: Icon(
              Icons.logout,
            color: Colors.white,),
            title: Text('Logout',
            style: TextStyle(color: Colors.white),),
                    ),
          ),
        ],),
      ),
      body: _pages[_selectedIndex],
    );
  }
}