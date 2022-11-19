import 'package:flutter/material.dart';
class CoffeeTile extends StatelessWidget {
  final String coffeeName;
  final String coffeeImage;
  final int coffeePrice;
  const CoffeeTile({Key? key, required this.coffeeName, required this.coffeeImage, required this.coffeePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(14),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image.asset(coffeeImage)),
            SizedBox(height: 10,),
            Text(coffeeName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ '+ coffeePrice.toString(),style: TextStyle(fontSize: 20),),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
