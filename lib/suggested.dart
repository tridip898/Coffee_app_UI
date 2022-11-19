import 'package:flutter/material.dart';

class SuggestedCoffee extends StatelessWidget {
  final String coffeName;
  final String coffeImage;
  final String coffeFalvor;
  final int coffePrice;
  const SuggestedCoffee(
      {Key? key,
      required this.coffeName,
      required this.coffeImage,
      required this.coffePrice,
      required this.coffeFalvor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              height: 55,
              child: ClipRRect(child: Image.asset(coffeImage),borderRadius: BorderRadius.circular(12),),
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeName,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  coffeFalvor,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                '\$' + coffePrice.toString(),
                style: TextStyle(fontSize: 17, color: Colors.white70),
              ),
            )
          ],
        ),
      ),
    );
  }
}
