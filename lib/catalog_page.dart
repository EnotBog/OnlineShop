import 'package:flutter/material.dart';
import 'package:untitled11/show_list.dart';
import 'package:untitled11/bottom_navigator.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const FittedBox(
            child: Text('Каталог', style: TextStyle(color: Colors.black)),
          ),
          centerTitle: true,
        ),
        body: ShowList(), // формирование лист виев
        bottomNavigationBar: const BottomNavigator());
  }
}
