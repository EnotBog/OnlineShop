import 'package:flutter/material.dart';
import 'package:untitled11/CatalogPage.dart';
import 'package:untitled11/HomePage.dart';

void main()=>runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
    ),
        initialRoute: '/catalog',
        routes: {
          '/': (context) => const HomePage(),
          '/catalog':(context)=> CatalogPage()
        }
    )
);

