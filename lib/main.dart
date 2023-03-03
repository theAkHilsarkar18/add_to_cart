

import 'package:add_to_cart/screens/addtocart/provider/productprovider.dart';
import 'package:add_to_cart/screens/addtocart/view/cartscreen.dart';
import 'package:add_to_cart/screens/addtocart/view/homescreen.dart';
import 'package:add_to_cart/screens/addtocart/view/productscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/' : (context) => Homescreen(),
            'product' : (context) => Productscreen(),
            'cart' : (context) => Cartscreen(),
          },
        ),
    ),
  );
}