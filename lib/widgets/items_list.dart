import 'package:flutter/material.dart';
import 'package:treeward/widgets/item_tile.dart';
import 'package:treeward/models/plant_item.dart';

class ItemList extends StatefulWidget {
  final List<Item> items;

  ItemList(this.items);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemTile(
          plantTitle: widget.items[index].name,
          plantPrice: widget.items[index].price,
          plantQuantity: widget.items[index].quantity,
          isChecked: widget.items[index].isAdd,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.items[index].toggleAdd();
            });
          },
        );
      },
      itemCount: widget.items.length,
    );
  }
}
