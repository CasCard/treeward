import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  final Function addItemCallback;

  AddItemScreen(this.addItemCallback);

  @override
  Widget build(BuildContext context) {
    String newPlantName;
    String newPlantPrice;
    String newPlantQuantity;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Plant Details',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newName) {
                newPlantName = newName;
              },
            ),
            Text(
              'Price',
              style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newPrice) {
                newPlantPrice = newPrice;
              },
            ),
            Text(
              'Quantity',
              style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newQuantity) {
                newPlantQuantity = newQuantity;
              },
            ),
            FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  addItemCallback(
                      newPlantName, newPlantPrice, newPlantQuantity);
                },
                child: Text('Add', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
