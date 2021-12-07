import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vestes/screens/good_screen.dart';

import '../constants.dart';

class BasketItem extends StatefulWidget {
  BasketItem({
    Key? key,
    required this.info,
    required this.num,
  }) : super(
          key: key,
        );
  _BasketItemState createState() => _BasketItemState();
  final Map<String, dynamic> info;
  late int num;
}

class _BasketItemState extends State<BasketItem> {
  late Map<String, dynamic> info;
  late int num;

  @override
  void initState() {
    super.initState();
    info = widget.info;
    num = widget.num;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Image.network(
                  info['image'],
                  height: 180,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          info['title'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: 200,
                      child: Text(info['category']),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              'Price',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                          Text(
                            info['price'].toString() + ' \$',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      )),
                ],
              )
            ]),
        Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (num > 0) num = num - 1;
                            });
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(fontSize: 25, color: kIconsColor),
                          )),
                      Text(num.toString()),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              num = num + 1;
                            });
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(fontSize: 20, color: kIconsColor),
                          )),
                    ],
                  ),
                  Text(
                    (num * info['price']).toString() + ' \$',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ]))
      ],
    );
  }
}
