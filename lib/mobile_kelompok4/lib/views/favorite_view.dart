import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/favorite_controller.dart';
import '../widgets/favorite_item_widget.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'My Favorite',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Aksi tombol kembali
            Get.back();
          },
        ),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: controller.favoriteItems.length,
          itemBuilder: (context, index) {
            var food = controller.favoriteItems[index];
            return FavoriteItemWidget(foodItem: food);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        selectedItemColor: Colors.amberAccent.shade100,
        unselectedItemColor: Colors.amberAccent.shade100,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
