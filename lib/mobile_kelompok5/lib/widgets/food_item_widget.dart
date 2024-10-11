import 'package:flutter/material.dart';
import '../models/food_model.dart';

class FoodItemWidget extends StatelessWidget {
  final Food foodItem;

  const FoodItemWidget({Key? key, required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar makanan
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              foodItem.imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          // Informasi makanan
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  foodItem.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  'Rp ${foodItem.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          // Rating dan ikon bintang
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                foodItem.rating.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
