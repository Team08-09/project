import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vestes/constants.dart';
import 'package:vestes/widgets/basket_item.dart';

class Basket extends StatefulWidget {
  Basket({Key? key, required this.id}) : super(key: key);
  _BasketState createState() => _BasketState();
  late int id;
  late List<dynamic> info = [];
  late List<dynamic> nums = [];
}

class _BasketState extends State<Basket> {
  late int id;
  late List<dynamic> info;
  late List<dynamic> nums = [];
  double sum = 0;

  Future<void> findInCart() async {
    // info.clear();
    // nums.clear();
    sum = 0;
    var response = await http.get('https://fakestoreapi.com/carts/user/$id');
    final List<dynamic> cartInfo = jsonDecode(response.body);
    for (int i = 0; i < cartInfo[cartInfo.length - 1]['products'].length; i++) {
      int id2 = cartInfo[cartInfo.length - 1]['products'][i]['productId'];
      var response2 = await http.get('https://fakestoreapi.com/products/$id2');
      Map<String, dynamic> goodInfo = jsonDecode(response2.body);
      info.add(goodInfo);
      nums.add(cartInfo[cartInfo.length - 1]['products'][i]['quantity']);
      sum = sum + nums[i] * info[i]['price'];
    }
  }

  void clearAll() {
    info.clear();
    nums.clear();
    print('object');
  }

  @override
  void initState() {
    super.initState();
    id = widget.id;
    info = widget.info;
    nums = widget.nums;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: findInCart(),
        builder: (context, snapshot) {
          List<Widget> _new_arrival_list = List.generate(
              nums.length,
              (int i) => BasketItem(
                    info: info[i],
                    num: nums[i],
                  ));
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  //elevation: 0,
                  shadowColor: const Color(0x44000000),
                  leadingWidth: 30,
                  leading: BackButton(color: kIconsColor),
                  title: Text(
                    'Basket',
                    style: TextStyle(color: kTextColor),
                  )),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 30, right: 20, left: 20),
                        child: Column(children: _new_arrival_list)),
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Divider(
                              color: kIconsColor,
                            ),
                          ),
                          Text(
                            'Выберите способ доставки',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: LightPurple,
                                    fixedSize: const Size(250, 70)),
                                onPressed: () {},
                                child: const Text(
                                  'Самовывоз',
                                  style: TextStyle(
                                      fontSize: 20, color: kTextColor),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: LightPurple,
                                    fixedSize: const Size(250, 70)),
                                onPressed: () {},
                                child: const Text(
                                  'Курьерская служба',
                                  style: TextStyle(
                                      fontSize: 20, color: kTextColor),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 20),
                            child: Divider(
                              color: kIconsColor,
                            ),
                          ),
                          Text(
                            'Контактные данные',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: TextField(
                              onSubmitted: (text) {},
                              //obscureText: true,
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                labelText: 'Имя*',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: TextField(
                              onSubmitted: (text) {},
                              //obscureText: true,
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                labelText: 'Телефон*',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 30),
                            child: TextField(
                              onSubmitted: (text) {},
                              //obscureText: true,
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                labelText: 'Email*',
                              ),
                            ),
                          ),
                          Text(
                            'Всего к оплате: $sum \$',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: LightPurple,
                                    fixedSize: const Size(250, 70)),
                                onPressed: () {},
                                child: const Text(
                                  'Оформить заказ',
                                  style: TextStyle(
                                      fontSize: 20, color: kTextColor),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
