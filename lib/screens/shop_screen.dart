import 'package:flutter/material.dart';
import 'package:treeward/screens/plants_tab.dart' as PlantTab;
import 'package:treeward/screens/seeds_tab.dart' as SeedTab;
import 'package:treeward/screens/utilities_tab.dart' as UtilitiesTab;
import 'package:treeward/screens/sell_screen.dart' as SellTab;
import 'package:treeward/screens/track_screen.dart' as TrackTab;

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int rewards = 0;
    // TODO: implement build
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Text(
                  "Rewards: $rewards",
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.w700),
                ),
                Padding(padding: EdgeInsets.only(right: 20)),
                Text(
                  'Treewrads',
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: null)
            ],
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Plants"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Seeds"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Utils"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Track"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Sell"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            PlantTab.PlantTab(),
            SeedTab.SeedsTab(),
            UtilitiesTab.UtilitiesTab(),
            TrackTab.TrackTab(),
            SellTab.SellTab(),
          ]),
        ));

  }
}
