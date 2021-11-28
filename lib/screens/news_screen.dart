import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vestes/constants.dart';
import 'package:vestes/widgets/new_arrival_items.dart';
import 'package:vestes/screens/good_screen.dart';
import 'package:http/http.dart' as http;

class News extends StatefulWidget {
  News({Key? key}) : super(key: key);
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  int _new_arrival_count = 0;
  List<dynamic> itemInfo = [];

  Future<void> findNew() async {
    var response = await http
        .get('https://fakestoreapi.com/products/category/women\'s clothing');

    if (response.body.length > 5) {
      _new_arrival_count = 5;
    } else {
      _new_arrival_count = response.body.length;
    }
    itemInfo = jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: findNew(),
        builder: (context, snapshot) {
          List<Widget> _new_arrival_list = List.generate(
              _new_arrival_count,
              (int i) => NewArrivalItem(
                    info: itemInfo[i],
                  ));

          final PageController controller = PageController(
            initialPage: 0,
            viewportFraction: 0.36,
          );

          return SingleChildScrollView(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(children: [
                    Container(
                      constraints: const BoxConstraints.tightFor(
                          width: double.infinity, height: 300),
                      color: LightPurple,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "New arrival",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: SizedBox(
                                    height: 215,
                                    child: PageView(
                                      padEnds: true,
                                      scrollDirection: Axis.horizontal,
                                      controller: controller,
                                      children: _new_arrival_list,
                                    )))
                          ],
                        ),
                      ),
                    ),
                    // ------------------------------TEST BANNER------------------------------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://vrn.spcity-friends.ru/files/cc7/cc7e6da5d80eaef563443982cbbc51a6.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        })),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://ilarge.lisimg.com/image/1877648/1118full-clara-alonso.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              }),
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              })
                                        ])),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://www.sotbit.ru/upload/sotbit.htmleditoraddition/cf1/banner_3.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        })),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "http://picture-cdn.wheretoget.it/c62gpv-i.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              }),
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              })
                                        ])),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://www.miraton.ua/upload/miraton/news-images/january-2013/AF8B2279.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        })),
                              ],
                            ),
                          ),
                          // -----------------Second Container-----------------------------
                          Container(
                            constraints: const BoxConstraints.tightFor(
                                width: double.infinity, height: 300),
                            color: LightPurple,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Popular",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 15, 0, 0),
                                      child: SizedBox(
                                          height: 215,
                                          child: PageView(
                                            padEnds: true,
                                            scrollDirection: Axis.horizontal,
                                            controller: controller,
                                            children: _new_arrival_list,
                                          )))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://ilarge.lisimg.com/image/1877648/1118full-clara-alonso.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              }),
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              })
                                        ])),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://vrn.spcity-friends.ru/files/cc7/cc7e6da5d80eaef563443982cbbc51a6.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        })),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Image.network(
                                    "https://ilarge.lisimg.com/image/1877648/1118full-clara-alonso.jpg"),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              }),
                                          InkWell(
                                              child: const Text('Read more',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              onTap: () {
                                                launch(
                                                    'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                              })
                                        ])),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // ------------------------------TEST BANNER------------------------------
                  ])));
        });
  }
}
