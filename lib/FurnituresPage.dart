import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/Styles/TextStyles.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({Key? key}) : super(key: key);

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {

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

  Widget _buildMenuHeadline({
    required String title,
    String? subtitle
  }) {

    return Container(
      alignment: Alignment.centerLeft,
      child: const Text(
        "Categories",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'PT-Sans',
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildHorizontalList(){
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 40.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                    style: TextStyle(
                      color: Colors.black
                    ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
            Padding(padding: EdgeInsets.all(4),
              child: Container(color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Appetizer',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  )),),
          ],
        )
    );
  }

  Widget _buildGridList(){
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(50, (index) {
        return Center(
            child: Card(
              elevation: 8,
              child: Column(
                children: [
                  Image.asset('assets/images/food.png'),
                  const Text('Appetizer')
                ],
              ),
            )
        );
      }),
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
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ).copyWith(top: 60),
                child: Column(
                  children: [
                    _buildTextBanner(title: 'Foods'),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildMenuHeadline(title: 'Categories'),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildHorizontalList(),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildGridList(),

                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}