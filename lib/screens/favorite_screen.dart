import 'package:flutter/material.dart';
import 'package:vestes/constants.dart';
import 'package:vestes/widgets/favotite_item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:vestes/widgets/new_arrival_items.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<dynamic> infoList = [];
  int _new_arrival_count = 0;

  Future<void> findFavorite() async {
    findNew();
    String thisId = await loadAsset(context);
    favoritesId = thisId.split('\n');
    for (int i = 0; i < favoritesId.length; i++) {
      var response =
          await http.get('https://fakestoreapi.com/products/${favoritesId[i]}');
      Map findInApi = jsonDecode(response.body);
      infoList.add(findInApi);
    }
  }

  Future<String> loadAsset(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/favorites.txt');
  }

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
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 0.6,
    );
    final PageController controller2 = PageController(
      initialPage: 0,
      viewportFraction: 0.36,
    );
    return FutureBuilder(
        future: findFavorite(),
        builder: (context, snapshot) {
          List<Widget> _favoriteList = List.generate(
              favoritesId.length,
              (int i) => FavoriteItem(
                    info: infoList[i],
                  ));

          List<Widget> _new_arrival_list = List.generate(
              _new_arrival_count,
              (int i) => NewArrivalItem(
                    info: itemInfo[i],
                  ));

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
                              controller: controller,
                              padEnds: true,
                              children: _favoriteList))
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
                                children: _new_arrival_list,
                              )))
                    ],
                  ),
                ),
              ),
            ],
          ));
        });
  }
}
