import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:treeward/widgets/items_list.dart';
import 'package:treeward/screens/add_item_screen.dart';
import 'package:treeward/models/plant_item.dart';

class SellTab extends StatefulWidget {
  @override
  _SellTabState createState() => _SellTabState();
}

class _SellTabState extends State<SellTab> {
  List<Item> items = [
    Item(name: 'Mango', price: "20", quantity: "2"),
    Item(name: 'Sunflower', price: "2", quantity: "5")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddItemScreen(
                    (newPlantTitle, newPlantPrice, newPlantQuantity) {
                  setState(() {
                    items.add(Item(
                        name: newPlantTitle,
                        price: newPlantPrice,
                        quantity: newPlantQuantity));
                  });
                  Navigator.pop(context);
                }),
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, left: 30, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'On Sale',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF32A060),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: ItemList(items),
            ),
          )
        ],
      ),
    );
  }
}
