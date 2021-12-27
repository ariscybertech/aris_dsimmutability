import 'package:flutter/material.dart';

@immutable
class Product {
  final String _id;
  String get id => _id;

  final String _name;
  String get name => _name;

  final Color _color;
  Color get color => _color;

  const Product({
    @required String id,
    @required String name,
    Color color = Colors.red,
  })  : _id = id,
        _name = name,
        _color = color,
        assert(id != null),
        assert(name != null);

  Product copyWith({
    String id,
    String name,
    Color color,
  }) =>
      Product(id: id ?? _id, name: name ?? _name, color: color ?? _color);

  @override
  String toString() {
    return "Product: ID = $id, Name = $name";
  }

  @override
  bool operator ==(Object other) =>
      other is Product &&
      other._id == _id &&
      other._name == _name &&
      other._color == _color;

  @override
  int get hashCode => hashValues(_id, _name, _color);
}
