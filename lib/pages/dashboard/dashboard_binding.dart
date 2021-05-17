
import 'package:get/get.dart';
import 'package:getx_internative/pages/detail/detail_controller.dart';
import 'package:getx_internative/pages/home/home_controller.dart';
import 'package:getx_internative/pages/recipes/recipes_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<RecipesController>(() => RecipesController());
    Get.lazyPut<DetailsController>(() => DetailsController());
  }
}