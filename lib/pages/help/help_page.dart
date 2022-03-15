import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meli_melo/pages/home/food_page_body.dart';
import 'package:meli_melo/pages/home/main_food_page.dart';
import 'package:meli_melo/widgets/small_text.dart';

import '../../routes/route_helper.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20*3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  ),
                  SizedBox(width: Dimensions.width20*5,),
                  GestureDetector(
                    onTap: (){
                      //Get.toNamed(RouteHelper.getInitial());
                      Get.to(MainFoodPage());
                    },
                    child: AppIcon(icon: Icons.home_outlined,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),


                ],
              )),
          Positioned(
              top:Dimensions.height20*5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                //color: Colors.red,
                  //child: GetBuilder<CartController>(builder: (cartController){
                  child: Row(
                    children: [
                      BigText(text: 'RUBRIQUE AIDE', ),
                      SizedBox(height:5 ),
                    ],
                  ),

                  ),
                ),

        ],
      ),
    );;
  }
}
