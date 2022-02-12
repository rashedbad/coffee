import 'package:coffee/List/List_detals.dart';
import 'package:coffee/List/list_coffee.dart';
import 'package:coffee/view/detals.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
              Row(
                children: const [
                  Text("It's Great ",
                      style: TextStyle(fontSize: 36, color: Colors.black)),
                  Text("Day for   ",
                      style: TextStyle(fontSize: 36, color: Color(0xffB98875))),
                ],
              ),
              const Text("Coffee. ",
                  style: TextStyle(fontSize: 36, color: Color(0xffB98875))),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: detals.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      child: ListCoffee(detals.elementAt(index)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Details(detals.elementAt(index))));
                      });
                }),
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.brown.shade100,
        barBackgroundColor: Colors.white,
        activeIconColor: Colors.black,
        inactiveIconColor: Colors.brown.shade100,
        textColor: Colors.black,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(iconData: Icons.location_on, title: "location"),
          TabData(iconData: Icons.coffee, title: "Cup"),
          TabData(iconData: Icons.person, title: "person")
        ],
        onTabChangedListener: (int position) {},
      ),
    );
  }
}
