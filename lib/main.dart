// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meli_melo/controllers/popular_product_controller.dart';
import 'package:meli_melo/pages/cart/cart_page.dart';
import 'package:meli_melo/pages/food/popular_food_detail.dart';
import 'package:meli_melo/pages/food/recommended_food_detail.dart';
import 'package:meli_melo/pages/help/help_page.dart';
import 'package:meli_melo/pages/home/food_page_body.dart';
import 'package:meli_melo/pages/home/main_food_page.dart';
import 'package:meli_melo/routes/route_helper.dart';
import 'controllers/recommanded_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}

