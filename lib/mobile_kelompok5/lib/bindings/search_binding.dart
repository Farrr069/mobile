import 'package:get/get.dart';
import '../controllers/mysearchcontroller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MySearchController>(() => MySearchController());
  }
}
