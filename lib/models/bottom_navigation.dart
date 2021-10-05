import 'package:flutter/material.dart';
import 'package:vestes/models/tab.dart';
import 'package:vestes/constants.dart';

const Map<TabItem, MyTab> tabs = {
  TabItem.NEWS: MyTab(name: "Posts", icon: Icons.home),
  TabItem.SEARCH: MyTab(name: "Albums", icon: Icons.search),
  TabItem.FAVORITES: MyTab(name: "Todos", icon: Icons.favorite),
  TabItem.ACCOUNT: MyTab(name: "Todos", icon: Icons.person)
};

class MyBottomNavigation extends StatelessWidget {
  MyBottomNavigation({required this.currentTab, required this.onSelectTab});

  final TabItem currentTab;

  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: MainPurple,
        unselectedItemColor: kIconsColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentTab.index,
        iconSize: 30,
        items: [
          _buildItem(TabItem.NEWS),
          _buildItem(TabItem.SEARCH),
          _buildItem(TabItem.FAVORITES),
          _buildItem(TabItem.ACCOUNT),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]));
  }

  BottomNavigationBarItem _buildItem(TabItem item) {
    return BottomNavigationBarItem(
      icon: Icon(
        _iconTabMatching(item),
      ),
      label: tabs[item]!.name,
    );
  }

  IconData _iconTabMatching(TabItem item) => tabs[item]!.icon;
}
