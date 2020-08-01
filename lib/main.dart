import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: true,
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.black,
          brightness: Brightness.light),
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
            centerTitle: true,
          ),
          body: ProductManager('Food Tester')),
    );
  }
}
