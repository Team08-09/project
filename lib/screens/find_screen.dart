import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vestes/constants.dart';

class Find extends StatelessWidget {
  const Find({Key? key}) : super(key: key);

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
              'Find',
              style: TextStyle(color: kTextColor),
            )),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Find',
                ),
              ),
            )
          ],
        ));
  }
}
