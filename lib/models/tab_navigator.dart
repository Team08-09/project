import 'package:flutter/material.dart';
import '../models/tab.dart';
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
          currentPage = const News();
        } else {
          currentPage = const News();
        }

        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}
