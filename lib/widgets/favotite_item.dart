import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vestes/screens/basket_screen.dart';
import 'package:vestes/screens/good_screen.dart';

import '../constants.dart';

class FavoriteItem extends StatefulWidget {
  FavoriteItem({Key? key, required this.info})
      : super(
          key: key,
        );
  final Map<String, dynamic> info;
  _FavoriteItemState createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  late Map<String, dynamic> info;
  bool addFavorite = true;

  @override
  void initState() {
    info = widget.info;
  }

  void addToBasket(context) {
    var temp = Basket(id: id);

    temp.info.add(info);
    temp.nums.add(1);

    Navigator.push(context, MaterialPageRoute(builder: (context) => temp));
  }

  void addToFavorite() {
    if (addFavorite == false) {
      //writeToFile(info['id']);
      //favoritesId.add(info['id'].toString());
      //itemInfo.add(info);
    }
  }

  // Future<void> writeToFile(text) async {

  //   final File file = File('favorites.txt');
  //   await file.writeAsString(text.toString(), mode: FileMode.append);
  //   print(text);
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Good(
                                      info: info,
                                    )));
                      },
                      child: Image.network(
                        info['image'],
                        height: 280,
                      ),
                    ),
                    Positioned(
                        right: 3,
                        top: -5,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                addToFavorite();
                                addFavorite = !addFavorite;
                              });
                            },
                            icon: Icon(
                              addFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: PinkRed,
                              size: 40,
                            )))
                  ],
                )),
            Text(
              info['price'].toString() + '\$',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              info['title'],
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: PinkRed, fixedSize: const Size(220, 40)),
                  onPressed: () {
                    addToBasket(context);
                  },
                  child: const Text(
                    'Add to Basket',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
