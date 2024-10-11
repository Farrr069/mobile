import 'package:get/get.dart';
import '../models/food_item_model.dart';

class FoodController extends GetxController {
  var foodItems = <FoodItem>[
    FoodItem(
      name: 'Mojito',
      description: 'Made with white rum, fresh mint leaves, lime juice, simple syrup, and a splash of soda water.',
      price: '15.000',
      rating: 5.0,
      imageUrl: 'assets/mojito.png',
    ),
    FoodItem(
      name: 'Iced Coffee',
      description: 'Espresso, chilled milk, and a touch of sweetness, served over ice for a smooth.',
      price: '15.000',
      rating: 4.0,
      imageUrl: 'assets/ice_coffee.png',
    ),
  ].obs;
}
