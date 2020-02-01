import 'package:flutter/material.dart';
class Products extends StatelessWidget{
  
  final List<String> products;
  
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: ConstrainedBox(constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child:Column(
        children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/hs2.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList(),
      )),);
  }

}