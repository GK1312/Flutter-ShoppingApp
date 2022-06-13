import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? const Color(0xFF69C5DF)
                  : const Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/food_page_body_slider_$index.jpg"),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
          ),
        )
      ],
    );
  }
}
