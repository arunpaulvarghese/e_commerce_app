import 'package:e_commerce/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'prod_detail.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),

        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 20 / 2)
      ],

    );
  }
}
