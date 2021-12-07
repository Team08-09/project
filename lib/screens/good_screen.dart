import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vestes/constants.dart';
import 'package:vestes/screens/basket_screen.dart';

class Good extends StatelessWidget {
  const Good({
    Key? key,
    required this.info,
  }) : super(key: key);

  final Map<String, dynamic> info;

  void addToBasket(context) {
    var temp = Basket(id: id);

    temp.info.add(info);
    temp.nums.add(1);

    Navigator.push(context, MaterialPageRoute(builder: (context) => temp));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(info['image']),
                ),
              ),
            ),
            AppBar(
              toolbarHeight: 30,
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: const Color(0x44000000),
              leadingWidth: 30,
              leading: BackButton(color: Colors.black),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          info['title'],
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          info['price'].toString() + '\$',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: PinkRed,
                                  fixedSize: const Size(250, 40)),
                              onPressed: () {
                                addToBasket(context);
                              },
                              child: const Text(
                                'Add to Basket',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          IconButton(
                              padding: EdgeInsets.only(left: 30),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: PinkRed,
                                size: 40,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
