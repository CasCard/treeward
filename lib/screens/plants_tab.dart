import 'package:flutter/material.dart';
import 'package:treeward/models/plant_model.dart';
import 'package:treeward/screens/plant_screen.dart';

class PlantTab extends StatefulWidget {
  @override
  _PlantTabState createState() => _PlantTabState();
}

class _PlantTabState extends State<PlantTab> {
  PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  _plantSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
            child: SizedBox(
                height: Curves.easeInOut.transform(value) * 500.0,
                width: Curves.easeInOut.transform(value) * 400.0,
                child: widget));
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PlantScreen(plant: plants[index]),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF32A060),
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: plants[index].imageUrl,
                      child: Image(
                        height: 280.0,
                        width: 2800.0,
                        image: AssetImage(
                          'assets/images/plant$index.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    right: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'FROM',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        Text(
                          '\$${plants[index].price}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30.0,
                    bottom: 40.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          plants[index].category.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          plants[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 4.0,
                child: RawMaterialButton(
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.black,
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () => print('Add to cart'),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 60.0),
        children: <Widget>[
          Container(
            height: 500.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _selectedPage = index;
                });
              },
              itemCount: plants.length,
              itemBuilder: (BuildContext context, int index) {
                return _plantSelector(index);
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    plants[_selectedPage].description,
                    style: TextStyle(color: Colors.black87, fontSize: 16.0),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
