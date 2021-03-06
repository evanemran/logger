import 'package:flutter/material.dart';
import 'package:logger/CartPage.dart';
import 'package:logger/FoodsPage.dart';
import 'package:logger/HomePage.dart';


class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(title: "Home",),
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    FoodsPage(title: "Foods",),
    CartPage(title: "Cart",),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_widgetOptions.elementAt(_selectedIndex).title),
      //   backgroundColor: Colors.black,
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.white),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, color: Colors.white),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          onTap: _onItemTapped,
        ),

        )
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Colors.white),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite, color: Colors.white),
      //       label: 'Saved',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart, color: Colors.white),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_rounded, color: Colors.white),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   backgroundColor: Colors.black,
      //   selectedItemColor: Colors.white,
      //   showSelectedLabels: true,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
