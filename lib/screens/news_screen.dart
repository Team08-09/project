import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vestes/constants.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: SizedBox(
                              height: 215,
                              child: PageView(
                                padEnds: true,
                                scrollDirection: Axis.horizontal,
                                controller: controller,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 7),
                                                child: Image.network(
                                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                  height: 150,
                                                )),
                                            const Text(
                                              "1299 rub",
                                              textAlign: TextAlign.left,
                                            ),
                                            const Text(
                                              "Цветочное платье \nс поясом",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 7),
                                                child: Image.network(
                                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                  height: 150,
                                                )),
                                            const Text(
                                              "1299 rub",
                                              textAlign: TextAlign.left,
                                            ),
                                            const Text(
                                              "Цветочное платье \nс поясом",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 7),
                                                child: Image.network(
                                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                  height: 150,
                                                )),
                                            const Text(
                                              "1299 rub",
                                              textAlign: TextAlign.left,
                                            ),
                                            const Text(
                                              "Цветочное платье \nс поясом",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 7),
                                                child: Image.network(
                                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                  height: 150,
                                                )),
                                            const Text(
                                              "1299 rub",
                                              textAlign: TextAlign.left,
                                            ),
                                            const Text(
                                              "Цветочное платье \nс поясом",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 7),
                                                child: Image.network(
                                                  'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                  height: 150,
                                                )),
                                            const Text(
                                              "1299 rub",
                                              textAlign: TextAlign.left,
                                            ),
                                            const Text(
                                              "Цветочное платье \nс поясом",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        }),
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        }),
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
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
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 7),
                                                      child: Image.network(
                                                        'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                        height: 150,
                                                      )),
                                                  const Text(
                                                    "1299 rub",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    "Цветочное платье \nс поясом",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 7),
                                                      child: Image.network(
                                                        'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                        height: 150,
                                                      )),
                                                  const Text(
                                                    "1299 rub",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    "Цветочное платье \nс поясом",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 7),
                                                      child: Image.network(
                                                        'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                        height: 150,
                                                      )),
                                                  const Text(
                                                    "1299 rub",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    "Цветочное платье \nс поясом",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 7),
                                                      child: Image.network(
                                                        'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                        height: 150,
                                                      )),
                                                  const Text(
                                                    "1299 rub",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    "Цветочное платье \nс поясом",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 7),
                                                      child: Image.network(
                                                        'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                        height: 150,
                                                      )),
                                                  const Text(
                                                    "1299 rub",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    "Цветочное платье \nс поясом",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        }),
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
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
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
                                        onTap: () {
                                          launch(
                                              'https://stackoverflow.com/questions/59146462/invalid-constant-value');
                                        }),
                                    InkWell(
                                        child: const Text('Read more',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline)),
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
  }
}
