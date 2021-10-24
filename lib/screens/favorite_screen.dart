import 'package:flutter/material.dart';
import 'package:vestes/constants.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 0.6,
    );

    final PageController controller2 = PageController(
      initialPage: 0,
      viewportFraction: 0.36,
    );

    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          constraints: const BoxConstraints.tightFor(
              width: double.infinity, height: 420),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                    height: 400,
                    child: PageView(
                      padEnds: true,
                      controller: controller,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                          height: 280,
                                        ),
                                        Positioned(
                                            right: 3,
                                            top: -5,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite,
                                                  color: PinkRed,
                                                  size: 40,
                                                )))
                                      ],
                                    )),
                                const Text(
                                  "1299 rub",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Text(
                                  "Цветочное платье с поясом",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: PinkRed,
                                          fixedSize: const Size(220, 40)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to Basket',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                          height: 280,
                                        ),
                                        Positioned(
                                            right: 3,
                                            top: -5,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite,
                                                  color: PinkRed,
                                                  size: 40,
                                                )))
                                      ],
                                    )),
                                const Text(
                                  "1299 rub",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Text(
                                  "Цветочное платье с поясом",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: PinkRed,
                                          fixedSize: const Size(220, 40)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to Basket',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                          height: 280,
                                        ),
                                        Positioned(
                                            right: 3,
                                            top: -5,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite,
                                                  color: PinkRed,
                                                  size: 40,
                                                )))
                                      ],
                                    )),
                                const Text(
                                  "1299 rub",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Text(
                                  "Цветочное платье с поясом",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: PinkRed,
                                          fixedSize: const Size(220, 40)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to Basket',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                          height: 280,
                                        ),
                                        Positioned(
                                            right: 3,
                                            top: -5,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite,
                                                  color: PinkRed,
                                                  size: 40,
                                                )))
                                      ],
                                    )),
                                const Text(
                                  "1299 rub",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Text(
                                  "Цветочное платье с поясом",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: PinkRed,
                                          fixedSize: const Size(220, 40)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to Basket',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                          height: 280,
                                        ),
                                        Positioned(
                                            right: 3,
                                            top: -5,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite,
                                                  color: PinkRed,
                                                  size: 40,
                                                )))
                                      ],
                                    )),
                                const Text(
                                  "1299 rub",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Text(
                                  "Цветочное платье с поясом",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: PinkRed,
                                          fixedSize: const Size(220, 40)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to Basket',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
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
                          controller: controller2,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                height: 150,
                                              ),
                                              Positioned(
                                                  right: -5,
                                                  top: -5,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color: PinkRed,
                                                        size: 30,
                                                      )))
                                            ],
                                          )),
                                      const Text(
                                        "1299 rub",
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        "Цветочное платье \nс поясом",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                height: 150,
                                              ),
                                              Positioned(
                                                  right: -5,
                                                  top: -5,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color: PinkRed,
                                                        size: 30,
                                                      )))
                                            ],
                                          )),
                                      const Text(
                                        "1299 rub",
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        "Цветочное платье \nс поясом",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                height: 150,
                                              ),
                                              Positioned(
                                                  right: -5,
                                                  top: -5,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color: PinkRed,
                                                        size: 30,
                                                      )))
                                            ],
                                          )),
                                      const Text(
                                        "1299 rub",
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        "Цветочное платье \nс поясом",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                height: 150,
                                              ),
                                              Positioned(
                                                  right: -5,
                                                  top: -5,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color: PinkRed,
                                                        size: 30,
                                                      )))
                                            ],
                                          )),
                                      const Text(
                                        "1299 rub",
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        "Цветочное платье \nс поясом",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 7),
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://img.ltwebstatic.com/images3_pi/2019/11/26/1574760539ecd08bd39a026c4a7f19963013d041b3_thumbnail_900x.webp',
                                                height: 150,
                                              ),
                                              Positioned(
                                                  right: -5,
                                                  top: -5,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite,
                                                        color: PinkRed,
                                                        size: 30,
                                                      )))
                                            ],
                                          )),
                                      const Text(
                                        "1299 rub",
                                        textAlign: TextAlign.left,
                                      ),
                                      const Text(
                                        "Цветочное платье \nс поясом",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
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
      ],
    ));
  }
}
