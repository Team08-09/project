import 'package:flutter/material.dart';
import '../models/tab.dart';
import 'package:vestes/screens/newsScreen.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage;
        if (tabItem == TabItem.NEWS) {
          currentPage = News();
        } else if (tabItem == TabItem.SEARCH) {
          currentPage = News();
        } else {
          currentPage = News();
        }

        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}
