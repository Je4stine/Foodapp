import 'package:food_delivery/Models/body_card_model.dart';

class Data {
  static List<String> categories = [
    "Pizza",
    "Hambugger",
    "Salads",
    "Pasta",
    "Soup"
  ];
  static List<FoodCardModel> food_menu = [
    FoodCardModel("randomurl", "Hawaian Chicken pizza", "Pizza house", 10, 15,
        "12:30", "description")
  ];
}
