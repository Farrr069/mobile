import 'package:get/get.dart';
import '../models/food_item_model.dart';

class FoodController extends GetxController {
  var foodItems = <FoodItem>[
    FoodItem(
      name: 'Onion Ring',
      description: 'Crispy, golden-brown rings of onion, perfect for snacking.',
      price: '15.000',
      rating: 4.7,
      imageUrl: 'assets/onion_ring.png',
    ),
    FoodItem(
      name: 'French Fries',
      description: 'These perfectly cooked French fries are crispy on the outside and fluffy on the inside, offering a delightful texture in every bite.',
      price: '15.000',
      rating: 4.4,
      imageUrl: 'assets/french_fries.png',
    ),
  ].obs;
}
