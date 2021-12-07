import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vestes/constants.dart';

import 'find_result_screen.dart';

class Find extends StatelessWidget {
  Find({Key? key}) : super(key: key);
  late List<dynamic> findList = [];

  Future<void> findInCatalog(text, context) async {
    var response = await http.get('https://fakestoreapi.com/products');
    List<dynamic> allGoods = jsonDecode(response.body);
    findList.clear();
    for (int i = 0; i < allGoods.length; i++) {
      String string = allGoods[i]['title'];
      if (string.toLowerCase().contains(text)) {
        findList.add(allGoods[i]);
      }
    }
    if (!findList.isEmpty)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FindResult(
                    goodList: findList,
                  )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            //elevation: 0,
            shadowColor: const Color(0x44000000),
            leadingWidth: 30,
            leading: BackButton(color: kIconsColor),
            title: const Text(
              'Find',
              style: TextStyle(color: kTextColor),
            )),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: TextField(
                onSubmitted: (text) {
                  findInCatalog(text, context);
                },
                //obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Название, артикул',
                ),
              ),
            )
          ],
        ));
  }
}
