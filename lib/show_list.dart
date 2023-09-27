import 'package:flutter/material.dart';

class ShowList extends StatelessWidget {
  final List<List<String>> data = [
    ['Корзина', 'assets/Korziny.jpg', '1230.99'],
    ['Аксессуары', 'assets/aks.jpg', '42.99'],
    ['Средство', 'assets/sredstva.jpg', '788.99'],
    ['Коврик', 'assets/kovriki.jpg', '99999.99'],
  ];

  ShowList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 250,
            //padding: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      data[index][0],
                      style: const TextStyle(fontSize: 20),
                    )),
                Image.asset(data[index][1]),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('${data[index][2]}деревянных'))
              ],
            ),
          );
        });
  }
}
