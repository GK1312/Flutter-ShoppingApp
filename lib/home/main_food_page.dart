import 'package:flutter/material.dart';
import 'package:shopping_app/home/food_page_body.dart';
import 'package:shopping_app/utils/colors.dart';
import 'package:shopping_app/widgets/big_text.dart';
import 'package:shopping_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // showing the header
        Container(
            child: Container(
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(text: "South America", color: AppColors.mainColor),
                  Row(
                    children: [
                      SmallText(text: "Buenos Aires", color: Colors.black54),
                      const Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child: const Icon(Icons.search, color: Colors.white),
                ),
              )
            ],
          ),
        )),
        
        // showing the body
        const FoodPageBody(),
      ],
    ));
  }
}
