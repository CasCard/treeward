import 'package:flutter/material.dart';
import 'package:treeward/widgets/item_tile.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[ItemTile()],
    );
  }
}
