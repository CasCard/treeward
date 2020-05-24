import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Bamboo',
        style: TextStyle(
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
            "10 \$",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "3",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    );
  }
}
