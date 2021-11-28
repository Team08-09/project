import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vestes/screens/good_screen.dart';

import '../constants.dart';

class NewArrivalItem extends StatelessWidget {
  NewArrivalItem({
    Key? key,
    required this.info,
  }) : super(
          key: key,
        );

  final Map<String, dynamic> info;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Good()));
        },
        child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Stack(
                          children: [
                            Image.network(
                              info['image'],
                              height: 150,
                            ),
                            Positioned(
                                right: -5,
                                top: -5,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: PinkRed,
                                      size: 30,
                                    )))
                          ],
                        )),
                    Text(
                      info['price'].toString() + ' \$',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      info['title'],
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    )
                  ],
                ),
              ),
            )));
  }
}
