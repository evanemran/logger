import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/Models/ExploreMenu.dart';
import 'package:logger/Styles/TextStyles.dart';

import 'RegistrationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isChecked = false;

  Widget _buildTextField({
    required bool obscureText,
    Widget? prefixedIcon,
    String? hintText,
  }) {
    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: TextField(
        cursorColor: Colors.white,
        cursorWidth: 2,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xFF5180ff),
          prefixIcon: prefixedIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white54,
            fontWeight: FontWeight.bold,
            fontFamily: 'PTSans',
          ),
        ),
      ),
    );
  }

  Widget _buildTextBanner({
    required String title,
    String? subtitle
  }) {
    return Material(
      color: Colors.transparent,
      child: Text(
        title,
        style: bannerTextStyle(),
      ),
    );
  }

  // Widget _buildHorizontalMenu(BuildContext context, List<ExploreMenu> menuList){
  //   return ListView.builder(
  //     scrollDirection: Axis.horizontal,
  //     itemCount: menuList.length,
  //     padding: EdgeInsets.all(8),
  //     itemBuilder: (context, index) {
  //       return Card(
  //           elevation: 8,
  //           color: Colors.white,
  //           child: InkWell(
  //             onTap: () {
  //               // Navigator.push(
  //               //   context,
  //               //   MaterialPageRoute(builder: (context) => ),
  //               // );
  //             },
  //             child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children:<Widget>[
  //                   Container(
  //                     decoration:BoxDecoration(
  //                         borderRadius:BorderRadius.circular(10),
  //                         color:Colors.transparent
  //                     ),
  //                     child: IconButton(
  //                       icon: Image.asset('assets/images/food.png'),
  //                       iconSize: 50,
  //                       onPressed: () {},
  //                     ),
  //                   ),
  //                   Text("Menu")
  //                 ]
  //             ),
  //           )
  //       );
  //
  //     },
  //   );
  // }

  final List<String> imgList = [
    'https://static.toiimg.com/thumb/82085026.cms?resizemode=4&width=1200',
    'https://thumbs.dreamstime.com/b/assorted-american-food-top-view-109748438.jpg',
    'https://img.freepik.com/free-photo/concept-indian-cuisine-baked-chicken-wings-legs-honey-mustard-sauce-serving-dishes-restaurant-black-plate-indian-spices-wooden-table-background-image_127425-18.jpg?w=2000',
    'https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=',
    'https://img.freepik.com/free-photo/mixed-pizza-with-various-ingridients_140725-3790.jpg?w=2000'
  ];

  final List<ExploreMenu> exploreMenuList = [
    ExploreMenu(1, "Food", Icons.abc),
    ExploreMenu(2, "Burger", Icons.abc),
    ExploreMenu(3, "Pizza", Icons.abc),
    ExploreMenu(3, "Pizza", Icons.abc),
    ExploreMenu(3, "Pizza", Icons.abc),
    ExploreMenu(3, "Drinks", Icons.abc),
  ];

  Widget _buildImageSlider(){
    return CarouselSlider(
      options: CarouselOptions(height: 200.0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
      items: imgList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(i),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildExploreMenu(){
    return Column(
      children: [

        Row(
          children: [
            //for menu title
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Explore",
                style: homeMenuTextStyle(),),
            ),

            //for view_more option
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Text("View all",
            //     style: homeMenuTextStyle(),),
            // ),

          ],
        ),

        // _buildHorizontalMenu(context, exploreMenuList)

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text("Home Page"),
        // ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffffffff),
                Color(0xffffffff),
                Color(0xffffffff),
                Color(0xffffffff),
                Color(0xffffffff),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ).copyWith(top: 60),
              child: Column(
                children: [
                  _buildTextBanner(title: 'Food Panda'),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildImageSlider(),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildExploreMenu(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}