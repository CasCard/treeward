class Item {
  final String name;
  final String price;
  final String quantity;
  bool isAdd;

  Item({this.name, this.price, this.quantity, this.isAdd = false});

  void toggleAdd() {
    isAdd = !isAdd;
  }
}
