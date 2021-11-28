import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vestes/constants.dart';
import 'package:vestes/widgets/good_list_item.dart';

class FindResult extends StatefulWidget {
  FindResult({
    Key? key,
    required this.goodList,
  }) : super(key: key);
  _FindResultState createState() => _FindResultState();

  final List<dynamic> goodList;
}

class _FindResultState extends State<FindResult> {
  late List<dynamic> goodList;
  late int _find_count;
  List<dynamic> itemInfoGoodList = [];

  Future<void> createResult() async {
    goodList = widget.goodList;
    _find_count = widget.goodList.length;
    print(goodList);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: createResult(),
        builder: (context, snapshot) {
          List<Widget> _findGoods = List.generate(
              _find_count,
              (int i) => GoodListItem(
                    info: goodList[i],
                  ));

          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shadowColor: const Color(0x44000000),
                  leadingWidth: 30,
                  //toolbarHeight: 40,
                  leading: BackButton(color: kIconsColor),
                  title: Text(
                    'Find result',
                    style: TextStyle(color: kTextColor, fontSize: 18),
                  )),
              body: SingleChildScrollView(
                  child: Column(
                children: _findGoods,
              )));
        });
  }
}
