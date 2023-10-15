import 'package:flutter/material.dart';
import 'package:untitled11/func_pages/product_card.dart';
import 'package:untitled11/product_array/catalog_array.dart';

class ShowList extends StatelessWidget {
  final String _source;
  late List _arr;
  late List<Widget> _listWidget;

  ShowList(this._source, {super.key}) {
    _arr = (Product(_source).get());

    if (_arr[0][0] != null) {
      _listWidget = [Text('${_arr.length}')];
      _createWidget(_source);
    } else {
      _listWidget = [
        (const Center(
          child: Text("Not Found null"),
        ))
      ];
    }
  }

  void _createWidget(String source) {
    _listWidget.clear();
    if (_source == "catalog") {
      for (int i = 0; i < _arr.length; ++i) {
        _listWidget.add(ProductCard(_arr[i]));
        // _listWidget.add(Text('iter${i}' '   ' '${_listWidget.length}'));
      }

      listViev();
    } else {
      _listWidget = [
        const Center(
          child: Text("Not Found"),
        )
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return listViev();
  }

  Widget listViev() {
    return ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: _listWidget,
          );
        });
  }
}
