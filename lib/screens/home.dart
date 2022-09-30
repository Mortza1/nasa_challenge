import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:nasa_murtaza/screens/myDashboard.dart';
import 'package:nasa_murtaza/screens/explore.dart';

class Home extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: NasaPages.home,
        key: ValueKey(NasaPages.home),
        child: const Home()
    );
  }
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Center(child: Text('Capacity Building Resources Portal', style: TextStyle(fontFamily: 'Anton'),)),
      ),
      body: Container(
        color: Colors.black,
        child: ContainedTabBarView(
          tabs: const [
            Text("Explore", style: TextStyle( fontFamily: 'Anton'),),
            Text("My Dashboard", style: TextStyle( fontFamily: 'Anton'))
          ],
          tabBarProperties: TabBarProperties(
            width: 300,
            height: 50,
            unselectedLabelColor: Colors.deepPurple,
            labelColor: Colors.purpleAccent,
            indicatorColor: Colors.purpleAccent,
            background: Container(
              color: Colors.black,
            ),
            alignment: TabBarAlignment.center
          ),
          views: const [
            Explore(),
            MyDashBoard(),


          ],
        ),
      ),
    );
  }
}
