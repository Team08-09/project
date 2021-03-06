import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vestes/screens/good_screen.dart';

import '../constants.dart';

class GoodListItem extends StatelessWidget {
  GoodListItem({Key? key, required this.info})
      : super(
          key: key,
        );

  final Map<String, dynamic> info;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Good(
                      info: info,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
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
                          height: 200,
                          width: 170,
                        ),
                        Positioned(
                            right: -5,
                            top: -5,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: PinkRed,
                                  size: 30,
                                )))
                      ],
                    )),
                Text(
                  info['price'].toString() + ' \$',
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    info['title'],
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
