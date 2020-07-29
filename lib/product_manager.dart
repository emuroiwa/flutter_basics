import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct = '';
  ProductManager(startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Testers'];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton.icon(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _products.add('value');
              });
            },
            label: Text('Add Products'),
            color: Colors.orange,
            textColor: Colors.white),
      ),
      Products(_products)
    ]);
  }
}
