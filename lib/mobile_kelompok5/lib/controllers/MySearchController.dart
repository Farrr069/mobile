import 'package:get/get.dart';
import '../models/food_model.dart';

class MySearchController extends GetxController {
  var foodItems = <Food>[].obs;
  var categories = <String>['Chicken', 'Beef', 'Fish'].obs;

  @override
  void onInit() {
    super.onInit();
    // Data dummy untuk tampilan Search Results
    foodItems.addAll([
      Food(
        name: 'Kari Ayam',
        description: 'Curry with chicken and more',
        imageUrl: 'assets/kari_ayam.png',
        price: 25000,
        rating: 4.7,
      ),
      Food(
        name: 'Ayam Geprek',
        description: 'Crispy fried chicken smashed and topped with spicy sambal.',
        imageUrl: 'assets/ayam_geprek.png',
        price: 20000,
        rating: 4.7,
      ),
      Food(
        name: 'Sate Ayam',
        description: 'Delicious chicken skewers grilled to perfection, served with peanut sauce.',
        imageUrl: 'assets/sate_ayam.png',
        price: 25000,
        rating: 4.7,
      ),
    ]);
  }
}
