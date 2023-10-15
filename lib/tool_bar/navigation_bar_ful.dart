import 'package:flutter/material.dart';
import 'package:untitled11/pages/basket/basket.dart';
import 'package:untitled11/pages/catalog_page.dart';

class NavigatorBar1 extends StatefulWidget {
  const NavigatorBar1({super.key});

  @override
  State<NavigatorBar1> createState() => NavigatorBar1State();
}

class NavigatorBar1State extends State<NavigatorBar1> {
  int currentPageIndex = 0;
  List<Widget> lists = [const BasketPage(), const CatalogPage()];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 70,
        backgroundColor: Theme.of(context).primaryColor,
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Catalog'),
          NavigationDestination(
              selectedIcon: Icon(Icons.shopping_basket),
              icon: Icon(Icons.shopping_basket_outlined),
              label: 'Basket')
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            if (index == 0) {
              Navigator.pushNamed(context, '/catalog');
            }
            if (index == 1) {
              Navigator.pushNamed(context, '/basket');
            }
            currentPageIndex = index;
          });
        });
  }
}
