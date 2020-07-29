import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }

}

class _ProductManagerState extends State<ProductManager> {
    List<String> _products = ['Food Testers'];
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
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
              ),
            ),
            Products(_products)
            ]);
  }
}