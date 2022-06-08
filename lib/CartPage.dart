import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/Models/CartItems.dart';
import 'package:logger/Styles/TextStyles.dart';

import 'globals.dart' as globals;

class CartPage extends StatefulWidget{
  const CartPage({Key? key, this.title}) : super(key: key);

  final title;

  @override
  State<CartPage> createState() => _CartPageState();
}

Widget buildCheckoutButton(BuildContext context){
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.black,
        ),
        elevation: MaterialStateProperty.all(6),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Check out',
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      onPressed: () {
        /*Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomBarPage()));*/
      },
    ),
  );
}

Widget showItemsList() {
  if(globals.cartProducts.isEmpty){
    return Center(
      child: Text(
        "No Items on Cart!",
        style: gridItemPrice(),
        textAlign: TextAlign.center,
      ),
    );
  }
  return ListView.builder(
    itemCount: globals.cartProducts.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    padding: EdgeInsets.all(8),
    itemBuilder: (context, index) {
      // clickedRecipe = posts[index];
      return Card(
          elevation: 8,
          color: Colors.white,
          child: InkWell(
            onTap: () {

            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/foodh.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Expanded(child: Column(
                  children: [
                    Text(globals.cartProducts[index].title, style: menuHeadlineText(),),
                    Text(globals.cartProducts[index].price.toString() + " \$", style: menuHeadlineText(),),
                  ],
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.close_rounded))
              ],
            )
          )
      );

    },
  );
}

int getTotalAmt(){
  int total = 0;
  for (CartItems i in globals.cartProducts){
    total = total + i.price;
  }
  return total;
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.black,
        ),
      body: Container(
        child: ListView(
          children: [
            showItemsList(),
            Padding(padding: EdgeInsets.all(8.0), child: Row(
              children: [
                Expanded(child: Text("Total: ", style: gridItemPrice(),)),
                Text(getTotalAmt().toString() + " \$", style: gridItemPrice(),)
              ],
            ),),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(padding: EdgeInsets.all(8), child: buildCheckoutButton(context),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )
    );
  }

}