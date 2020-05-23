import 'package:flutter/material.dart';
import 'package:treeward/screens/shop_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Plant Shop UI',
      debugShowCheckedModeBanner: false,
      home:ShopScreen(),
    );
  }
}


