import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vestes/constants.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

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
              'Basket',
              style: TextStyle(color: kTextColor),
            )),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Image.network(
                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                  height: 180,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'Цветочное платье с поясом',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                        'Состав: Вискоза 100% \nАртикул MP002XW10AQX'),
                                  ),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 70),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 150),
                                            child: Text(
                                              'Price',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Text(
                                            '1299',
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      )),
                                ],
                              )
                            ]),
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: kIconsColor),
                                          )),
                                      Text('1'),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kIconsColor),
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '1299',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: const Divider(
                        color: kIconsColor,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Image.network(
                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                  height: 180,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'Цветочное платье с поясом',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                        'Состав: Вискоза 100% \nАртикул MP002XW10AQX'),
                                  ),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 70),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 150),
                                            child: Text(
                                              'Price',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Text(
                                            '1299',
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      )),
                                ],
                              )
                            ]),
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: kIconsColor),
                                          )),
                                      Text('1'),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kIconsColor),
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '1299',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: const Divider(
                        color: kIconsColor,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Image.network(
                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                  height: 180,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'Цветочное платье с поясом',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                        'Состав: Вискоза 100% \nАртикул MP002XW10AQX'),
                                  ),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 70),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 150),
                                            child: Text(
                                              'Price',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Text(
                                            '1299',
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      )),
                                ],
                              )
                            ]),
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: kIconsColor),
                                          )),
                                      Text('1'),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kIconsColor),
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '1299',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Text(
                            'Выберите способ доставки',
                          ),
                          TextButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(220, 40)),
                              onPressed: () {},
                              child: const Text(
                                'Add to Basket',
                                style:
                                    TextStyle(fontSize: 20, color: kTextColor),
                              )),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
