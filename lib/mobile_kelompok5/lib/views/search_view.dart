import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/mysearchcontroller.dart';
import '../widgets/food_item_widget.dart';
import '../widgets/category_button_widget.dart';

class SearchView extends GetView<MySearchController> { // Pastikan menggunakan MySearchController
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            Get.back();
          },
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.tune, color: Colors.orange),
                onPressed: () {
                  // Aksi untuk membuka filter
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search Results',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  itemCount: controller.foodItems.length,
                  itemBuilder: (context, index) {
                    var food = controller.foodItems[index];
                    return FoodItemWidget(foodItem: food);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Neighbour's Search",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  var category = controller.categories[index];
                  return CategoryButtonWidget(label: category);
                },
              ),
            ),
          ],
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
            icon: Icon(Icons.favorite_outline),
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
