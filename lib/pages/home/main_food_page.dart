// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_import, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meli_melo/pages/help/help_page.dart';
import 'package:meli_melo/utils/colors.dart';
import 'package:meli_melo/widgets/big_text.dart';
import 'package:meli_melo/widgets/small_text.dart';

import '../../utils/dimensions.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(

           child: Container(
            margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
            padding: EdgeInsets.only(left:Dimensions.width20, right:Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                BigText(text: "Sénégal", color: AppColors.mainColor ),
                Row(
                  children: [
                    SmallText(text: "Dakar", color: Colors.black54),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                width:Dimensions.height45,
                height: Dimensions.height45,
                child: GestureDetector(
                  onTap: (){
                    Get.to(HelpPage());
                  },
                    child: Icon(Icons.help_outlined, color:Colors.white, size: Dimensions.iconSize24)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
              ),
            )),
            
          ],)
        ),
      ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}