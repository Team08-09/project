import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vestes/constants.dart';
import 'package:vestes/navigator/tab.dart';
import 'package:vestes/navigator/tab_navigator.dart';
import 'package:vestes/navigator/bottom_navigation.dart';
import 'package:vestes/screens/basket_screen.dart';
import 'package:vestes/screens/find_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _navigatorKeys = {
    TabItem.NEWS: GlobalKey<NavigatorState>(),
    TabItem.SEARCH: GlobalKey<NavigatorState>(),
    TabItem.FAVORITES: GlobalKey<NavigatorState>(),
    TabItem.ACCOUNT: GlobalKey<NavigatorState>(),
  };

  var _currentTab = TabItem.NEWS;

  void _selectTab(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentTab != TabItem.NEWS) {
          if (_currentTab != TabItem.SEARCH) {
            if (_currentTab == TabItem.ACCOUNT) {
              _selectTab(TabItem.FAVORITES);
            } else {
              _selectTab(TabItem.SEARCH);
            }
          } else {
            _selectTab(TabItem.NEWS);
          }
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            //elevation: 0,
            shadowColor: const Color(0x44000000),
            leading: Image.asset("assets/icons/crown.png"),
            leadingWidth: 300,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Find()));
                  },
                  icon: const Icon(
                    Icons.search,
                    color: kIconsColor,
                    size: 30,
                  )),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Basket()));
                },
                icon: const Icon(
                  CupertinoIcons.shopping_cart,
                  color: kIconsColor,
                  size: 30,
                ),
              )
            ]),
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.NEWS),
          _buildOffstageNavigator(TabItem.SEARCH),
          _buildOffstageNavigator(TabItem.FAVORITES),
          _buildOffstageNavigator(TabItem.ACCOUNT),
        ]),
        bottomNavigationBar: MyBottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }
}
