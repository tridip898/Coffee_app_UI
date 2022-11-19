import 'package:coffee_shop_ui/coffee_tile.dart';
import 'package:coffee_shop_ui/suggested.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List coffeList = [
    ["lib/icons/cappuccino.jpg", "Cappuccino", 20],
    ["lib/icons/black_coffee.jpg", "Black Coffee", 15],
    ["lib/icons/cold_coffee.jpg", "Cold Coffee", 30],
    ["lib/icons/americano_coffee.jpg", "Americano", 50],
  ];
  List suggestedcoffe = [
    ["Cappuccino Coffee", "lib/icons/cappuccino.jpg", 20, "Milk flavor"],
    ["Black Coffee", "lib/icons/black_coffee.jpg", 15, "Pure coffee"],
    ["Cold Coffee", "lib/icons/cold_coffee.jpg", 30, "Ice and Milk"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade900,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
            label: "Favorite"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notification"),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //custome app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey.shade800,
                    size: 27,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey.shade800,
                    size: 27,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //text
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Find the best coffee in the town!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade600),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      size: 30,
                    ),
                    hintText: "Search your coffee...",
                    hintStyle: TextStyle(fontSize: 18)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //tabBar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "For You",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 240,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeList.length,
                itemBuilder: (context, index) {
                  return CoffeeTile(
                    coffeeName: coffeList[index][1],
                    coffeeImage: coffeList[index][0],
                    coffeePrice: coffeList[index][2],
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Suggested for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(
              thickness: 1,
            ),
          ),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
            child: ListView.builder(
                  itemCount: suggestedcoffe.length,
                  itemBuilder: (context, index) {
                    return SuggestedCoffee(
                        coffeName: suggestedcoffe[index][0],
                        coffeImage: suggestedcoffe[index][1],
                        coffePrice: suggestedcoffe[index][2],
                        coffeFalvor: suggestedcoffe[index][3]);
                  }),
          ),
              ))
          //GridView
        ],
      ),
    ));
  }
}
