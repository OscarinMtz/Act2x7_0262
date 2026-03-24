import 'package:flutter/material.dart';
import 'vistas_grid/catalogo_productos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ElectroMtz Store',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: CatalogoProductos(),
  ));
}