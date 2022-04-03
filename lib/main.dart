import 'package:flutter/material.dart';
import 'package:food_delivery/Components/Card.dart';
import 'package:food_delivery/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyle.bgColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Foods",
          style: GoogleFonts.nunito(
              color: AppStyle.primaryColor,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppStyle.primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Categories',
                  style: AppStyle.mainTitleStyle,
                ),
              ),
              Container(
                height: 80.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: Data.categories
                      .map((e) => Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.9),
                          child: ActionChip(
                            label: Text(e),
                            onPressed: () {},
                          )))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "Most popular",
                  style: AppStyle.mainTitleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: Data.food_menu.map((e) => FoodCard(e)).toList(),
                ),
              )
            ]),
      ),
    );
  }
}
