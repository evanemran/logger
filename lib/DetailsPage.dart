import 'package:flutter/material.dart';
import 'package:logger/DetailsPage.dart';
import 'package:logger/Styles/TextStyles.dart';

class DetailsPage extends StatefulWidget{
  const DetailsPage({Key? key, required this.title, required this.initialCount}) : super(key: key);
  final String title;
  final int initialCount;

  @override
  State<DetailsPage> createState() => _DetailPageState();
}

/*Widget buildCounter() {
  // return SizedBox(
  //   width: 110.0,
  //   height: 44.0,
  //   child: Center(
  //     child: Container(
  //       decoration: BoxDecoration(
  //           color: Color(0xddFFFFFF),
  //           border: Border.all(color: Colors.black, width: 1.0),
  //           borderRadius: BorderRadius.circular(22.0)),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: <Widget>[
  //           GestureDetector(
  //               onTap: () {
  //                 updateCount(-1);
  //               },
  //               child: Container(
  //                   width: 40.0,
  //                   child: Center(
  //                       child: Text(
  //                         '-',
  //                         style: TextStyle(
  //                             fontSize: 25.0,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.orange,
  //                             decoration: TextDecoration.none),
  //                       )))),
  //           Container(
  //             child: Center(
  //                 child: Text(
  //                   '$count',
  //                   style: TextStyle(
  //                       fontSize: 20.0,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.orange,
  //                       decoration: TextDecoration.none),
  //                 )),
  //           ),
  //           GestureDetector(
  //               onTap: () {
  //                 updateCount(1);
  //               },
  //               child: Container(
  //                   width: 40.0,
  //                   child: Center(
  //                       child: Text(
  //                         '+',
  //                         style: TextStyle(
  //                             fontSize: 25.0,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.orange,
  //                             decoration: TextDecoration.none),
  //                       )))),
  //         ],
  //       ),
  //     ),
  //   ),
  // );
}*/

Widget buildOfferList() {
  List<String> offers = [];
  offers.add("Comes with extra cheese");
  offers.add("Choose your deserts");
  offers.add("Equipped with signature sauce");
  return ListView.builder(
      itemCount: offers.length,
      itemBuilder: (_, int index) {
        return Row(
          children: [
            Icon(Icons.control_point, color: Colors.black,),
            ListTile(title: Text(offers[index].toString()),)
          ],
        );
      });
}


class _DetailPageState extends State<DetailsPage> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialCount;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void updateCount(int addValue) {
    if (count + addValue >= 0) {
      setState(() {
        count += addValue;
      });
      // if (widget.onChange != null) {
      //   widget.onChange(count);
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                  Text("Back")
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/foodh.jpg',
                  height: 200,
                  // fit: BoxFit.fitHeight,
                ),
              ),
              Text(widget.title, style: homeMenuTextStyle()),
              Text("Khanas", style: menuHeadlineText()),
              const SizedBox(
                height: 30,
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
                  // buildCounter(),
                  SizedBox(
                    width: 110.0,
                    height: 44.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Color(0xddFFFFFF),
                            border: Border.all(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(22.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  updateCount(-1);
                                },
                                child: Container(
                                    width: 40.0,
                                    child: Card(
                                      color: Colors.grey,
                                        child: Center(
                                            child: Text(
                                              '-',
                                              style: TextStyle(
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  decoration: TextDecoration.none),
                                            )
    )
                                    ))),
                            Container(
                              child: Center(
                                  child: Text(
                                    '$count',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                  )),
                            ),
                            GestureDetector(
                                onTap: () {
                                  updateCount(1);
                                },
                                child: Container(
                                    width: 40.0,
                                    child: Card(
                                      color: Colors.grey,
                                        child: Center(
                                            child: Text(
                                              '+',
                                              style: TextStyle(
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  decoration: TextDecoration.none),
                                            )
    )
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.black,),
                  const SizedBox(
                    width: 30,
                  ),
                  Text("4.5", style: gridItemName(),),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("(50 Reviews)", style: menuHeadlineText(),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,",
                style: gridItemName(),
              ),
              // buildOfferList(),
            ],
          ),
        ),
      ),
    );
  }

}