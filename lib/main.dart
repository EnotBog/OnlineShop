import 'package:flutter/material.dart';
import 'package:untitled11/pages/catalog_page.dart';
import 'package:untitled11/pages/basket/basket.dart';
import 'package:untitled11/pages/home_page.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/catalog': (context) => const CatalogPage(),
          '/basket': (context) => const BasketPage()
        }));
