import 'package:get/get.dart';
import 'package:meli_melo/controllers/cart_controller.dart';
import 'package:meli_melo/data/api/api_client.dart';
import 'package:meli_melo/data/repersitory/cart_repo.dart';
import 'package:meli_melo/data/repersitory/popular_product_repo.dart';

import '../controllers/popular_product_controller.dart';
import '../controllers/recommanded_product_controller.dart';
import '../data/repersitory/recommended_product_repo.dart';
import '../utils/app_constants.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}