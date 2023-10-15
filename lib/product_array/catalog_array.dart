class Product {
  final String source;
  final List<List> data = [
    ['Корзина', 'assets/Korziny.jpg', '1230.99'],
    ['Аксессуары', 'assets/aks.jpg', '42.99'],
    ['Средство', 'assets/sredstva.jpg', '788.99'],
    ['Коврик', 'assets/kovriki.jpg', '99999.99'],
  ];
  final List listNull = [
    [null]
  ];

  Product(this.source);

  List get() {
    return data;
  }
}
