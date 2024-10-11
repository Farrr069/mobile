import 'package:get/get.dart';
import '../models/food_model.dart';

class FavoriteController extends GetxController {
  var favoriteItems = <Food>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Data dummy, sesuai dengan contoh UI
    favoriteItems.addAll([
      Food(
        name: 'Ayam Geprek',
        description: 'Ayam crispy dengan sambal',
        imageUrl: 'assets/ayam_geprek.png',
        price: 20000,
      ),
      Food(
        name: 'Onion Ring',
        description: 'Bawang bombai goreng',
        imageUrl: 'assets/onion_ring.png',
        price: 15000,
      ),
      Food(
        name: 'Es Teh',
        description: 'Teh sari wangi dengan es',
        imageUrl: 'assets/es_teh.png',
        price: 5000,
      ),
    ]);
  }
}
