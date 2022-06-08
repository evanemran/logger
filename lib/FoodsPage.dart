import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/DetailsPage.dart';
import 'package:logger/Models/CartItems.dart';
import 'package:logger/Styles/TextStyles.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'globals.dart' as globals;

class FoodsPage extends StatefulWidget {
  const FoodsPage({Key? key, this.title}) : super(key: key);

  final title;

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  Widget _buildTextBanner({required String title, String? subtitle}) {
    return Material(
      color: Colors.transparent,
      child: Text(
        title,
        style: bannerTextStyle(),
      ),
    );
  }

  Widget _buildMenuHeadline({required String title, String? subtitle}) {
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

  Widget _buildHorizontalList() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 40.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Appetizer',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
          ],
        ));
  }

  Widget _buildGridList() {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Expanded(
        child: GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      padding: const EdgeInsets.all(0),
          crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
          controller: ScrollController(keepScrollOffset: false),
      crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
      // Generate 100 widgets that display their index in the List.
      children: List.generate(40, (index) {
        return Card(
          elevation: 8,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage(title: "Appetizer $index", initialCount: 0,)),
              );
            },
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/foodh.jpg',
                  height: 150,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Appetizer $index',
                        style: gridItemName(),
                        textAlign: TextAlign.left,),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              '350 \$',
                              style: gridItemPrice(),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.shopping_cart),
                            color: Colors.black,
                            onPressed: () {
                              globals.cartProducts.add(CartItems("Appetizer $index", 350));
                              showToast("added to cart!");
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    ));
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
        ));
      }),
    );
  }

  Widget _createSearchView() {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1.0),
      ),
      child: const TextField(
        // controller: _searchview,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.black),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  Widget buildFloatingSearchBar() {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(top: 20),
            child: Column(
              children: [
                _buildTextBanner(title: 'Foods'),
                // _createSearchView(),
                const SizedBox(
                  height: 20,
                ),
                _buildMenuHeadline(title: 'Categories'),
                const SizedBox(
                  height: 10,
                ),
                _buildHorizontalList(),
                const SizedBox(
                  height: 10,
                ),
                // _createSearchView(),
                // buildFloatingSearchBar(),
                const SizedBox(
                  height: 20,
                ),
                /*Expanded(
                      child: _buildGridList(),
                    ),*/
                _buildGridList(),
              ],
            ),
          ),
        ),
      )),
    );
  }
  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18);
  }
}
