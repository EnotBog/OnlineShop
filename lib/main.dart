import 'package:flutter/material.dart';
import 'package:untitled11/catalog_page.dart';
import 'package:untitled11/home_page.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        initialRoute: '/catalog',
        routes: {
          '/': (context) => const HomePage(),
          '/catalog': (context) => const CatalogPage()
        }));
