import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      toolbarHeight: 50,
      title: const FittedBox(
        child: Text('Корзина', style: TextStyle(color: Colors.black)),
      ),
      centerTitle: true,
    ));
  }
}
