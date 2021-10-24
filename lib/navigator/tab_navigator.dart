import 'package:flutter/material.dart';
import 'package:vestes/screens/catalog_screen.dart';
import 'package:vestes/screens/favorite_screen.dart';
import 'package:vestes/screens/info_screen.dart';
import '../navigator/tab.dart';
import 'package:vestes/screens/news_screen.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage;
        if (tabItem == TabItem.NEWS) {
          currentPage = const News();
        } else if (tabItem == TabItem.SEARCH) {
          currentPage = const Catalog();
        } else if (tabItem == TabItem.FAVORITES) {
          currentPage = const Favorite();
        } else {
          currentPage = const Info();
        }

        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}
