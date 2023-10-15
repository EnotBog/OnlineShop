import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  late String _name;
  late String _route;
  late String _price;
  late Widget _widget;

  ProductCard(List arr, {super.key}) {
    _name = arr[0];
    _route = arr[1];
    _price = arr[2];
    _widget = Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  _name,
                  style: const TextStyle(fontSize: 20),
                )),
            Image.asset(_route),
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: Text('$_price ₽'))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
