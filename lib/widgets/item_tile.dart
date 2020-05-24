import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final bool isChecked;
  final String plantTitle;
  final String plantPrice;
  final String plantQuantity;
  final Function checkboxCallback;

  ItemTile(
      {this.isChecked,
      this.plantTitle,
      this.plantPrice,
      this.plantQuantity,
      this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        plantTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      title: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Text(
            "$plantPrice \$",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "$plantQuantity",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

