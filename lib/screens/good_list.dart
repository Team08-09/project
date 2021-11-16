import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vestes/constants.dart';

class GoodList extends StatelessWidget {
  const GoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            //elevation: 0,
            shadowColor: const Color(0x44000000),
            leadingWidth: 30,
            leading: BackButton(color: kIconsColor),
            title: Text(
              'Category',
              style: TextStyle(color: kTextColor),
            )),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            )
          ],
        ));
  }
}
