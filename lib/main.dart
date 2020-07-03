
import 'package:flutter/material.dart';
import 'package:test2_mge_irvan/View/ListProduk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Http App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListProduk(),
    );
  }
}