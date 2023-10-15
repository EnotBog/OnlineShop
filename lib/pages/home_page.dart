import 'package:flutter/material.dart';
import 'package:untitled11/pages/catalog_page.dart';
import 'package:untitled11/pages/basket/basket.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Widget> lists = [const CatalogPage(), const BasketPage()];
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          title: const FittedBox(
            child: Text('1 Online Shop', style: TextStyle(color: Colors.black)),
          ),
          centerTitle: true,
        ),
        body: lists[_currentPageIndex],
        bottomNavigationBar: NavigationBar(
            height: 50,
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
            selectedIndex: _currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                if (index != _currentPageIndex) {
                  _currentPageIndex = index;
                }
              });
            }));
  }
}
