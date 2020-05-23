import 'package:flutter/material.dart';
import 'package:treeward/screens/plants_tab.dart' as PlantTab;
import 'package:treeward/screens/seeds_tab.dart' as SeedTab;
import 'package:treeward/screens/utilities_tab.dart' as UtilitiesTab;

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int rewards = 0;
    // TODO: implement build
    return DefaultTabController(
        length: 3,
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
                      child: Text("Utilities"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            PlantTab.PlantTab(),
            SeedTab.SeedsTab(),
            UtilitiesTab.UtilitiesTab(),
          ]),
        ));

//    return Scaffold(
//      backgroundColor: Colors.white,
//
//      body: AnnotatedRegion<SystemUiOverlayStyle>(
//        value: SystemUiOverlayStyle.dark,
//        child: ListView(
//          padding: EdgeInsets.symmetric(vertical: 60.0),
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.symmetric(horizontal: 30.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Icon(
//                    Icons.menu,
//                    size: 30.0,
//                    color: Colors.grey,
//                  ),
//                  Icon(
//                    Icons.shopping_cart,
//                    size: 30.0,
//                    color: Colors.black,
//                  )
//                ],
//              ),
//            ),
//            SizedBox(height: 20.0),
//            Padding(
//              padding: EdgeInsets.only(left: 30.0),
//              child: Text(
//                'Trending',
//                style: TextStyle(
//                  fontSize: 24.0,
//                  fontWeight: FontWeight.w600,
//                ),
//              ),
//            ),
//            SizedBox(height: 20.0),
//
//            TabBar(
//              controller: _tabController,
//              indicatorColor: Colors.transparent,
//              labelColor: Colors.black,
//              unselectedLabelColor: Colors.grey.withOpacity(0.6),
//              labelPadding: EdgeInsets.symmetric(horizontal: 35.0),
//              isScrollable: true,
//              tabs: <Widget>[
//                Tab(
//                  child: Text(
//                    'Plants',
//                    style:
//                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//                  ),
//                ),
//                Tab(
//                  child: Text(
//                    'Seeds',
//                    style:
//                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//                  ),
//                ),
//                Tab(
//                  child: Text(
//                    'Utilities',
//                    style:
//                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//                  ),
//                ),
//              ],
//            ),
//            SizedBox(
//              height: 20.0,
//            ),
//            TabBarView(
//              controller: _tabController,
//              children: <Widget>[
//                PlantTab.PlantTab(),
//                SeedTab.SeedsTab(),
//                UtilitiesTab.UtilitiesTab()
//              ],
//            )
//          ],
//        ),
//      ),
//    );
  }
}
