import 'package:flutter/material.dart';
import 'package:food_delivery/Models/body_card_model.dart';

class FoodCard extends StatelessWidget {
  FoodCard(this.model, {Key? key}) : super(key: key);
  FoodCardModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(
              model.img_url!,
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
