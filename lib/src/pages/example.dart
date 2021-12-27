import 'dart:math';

import 'package:ds_immutability/src/models/product.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  Random _random;
  Product _product;

  @override
  void initState() {
    super.initState();
    _product = Product(id: "1", name: "iPhone 12");
    _random = Random();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Immutability and Equality"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _randomProductData,
      ),
      body: ListTile(
        leading: CircleAvatar(
          backgroundColor: _product.color,
        ),
        title: Text(
          _product.name,
        ),
        subtitle: Text(
          _product.id,
        ),
      ),
    );
  }

  void _randomProductData() {
    final randomNumber = _random.nextInt(13);
    setState(
      () => _product = _product.copyWith(
        name: "iPhone $randomNumber",
      ),
    );
  }
}
