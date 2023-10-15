import 'package:flutter/material.dart';
import 'package:untitled11/func_pages/new_show_list.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          title: const FittedBox(
            child: Text('Каталог', style: TextStyle(color: Colors.black)),
          ),
          centerTitle: true,
        ),
        body: ShowList('catalog')); // формирование лист виев
    // bottomNavigationBar: NavigatorBar1());
  }
}
