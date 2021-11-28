import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vestes/constants.dart';
import 'package:vestes/screens/good_screen.dart';
import 'package:vestes/widgets/good_list_item.dart';

class GoodList extends StatefulWidget {
  GoodList({Key? key, required this.categoryURL, required this.categoryName})
      : super(key: key);
  _GoodListState createState() => _GoodListState();
  final String categoryURL;
  final String categoryName;
}

class _GoodListState extends State<GoodList> {
  late String categoryURL;
  late String categoryName;

  int _find_count = 0;
  int _find_count_text = 0;
  List<dynamic> itemInfoGoodList = [];

  Future<void> findGood() async {
    var response = await http
        .get('https://fakestoreapi.com/products/category/' + categoryURL);

    itemInfoGoodList = jsonDecode(response.body);
    _find_count = 2;
    _find_count_text = 12;
  }

  @override
  void initState() {
    super.initState();
    categoryName = widget.categoryName;
    categoryURL = widget.categoryURL;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: findGood(),
        builder: (context, snapshot) {
          List<Widget> _goodList = List.generate(
              _find_count,
              (int i) => GoodListItem(
                    info: itemInfoGoodList[i],
                  ));

          List<Widget> _goodList2 = _goodList.reversed.toList();

          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shadowColor: const Color(0x44000000),
                  leadingWidth: 30,
                  toolbarHeight: 40,
                  leading: BackButton(color: kIconsColor),
                  title: Text(
                    categoryName,
                    style: TextStyle(color: kTextColor, fontSize: 16),
                  )),
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Найдено $_find_count_text товара(-ов)',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _goodList),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _goodList2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _goodList),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _goodList2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _goodList),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _goodList2,
                    ),
                  ),
                ],
              )));
        });
  }
}
