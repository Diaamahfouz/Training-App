import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';
import 'package:training/models/category_model.dart';
import 'package:training/widgets/custom_category.dart';

class ActivityScreen extends StatelessWidget {
  static const String routeName = '/activity';
  List<CategoryModel> categories = [
    CategoryModel(word: 'Walking', iconName: Icons.hiking),
    CategoryModel(word: 'Golf', iconName: Icons.golf_course),
    CategoryModel(word: 'Running', iconName: Icons.directions_run),
    CategoryModel(word: 'Cycling', iconName: Icons.directions_bike),
    CategoryModel(word: 'Gym', iconName: Icons.fitness_center),
    CategoryModel(word: 'Yoga', iconName: Icons.self_improvement),
    CategoryModel(word: 'FootBall', iconName: Icons.sports_soccer),
    CategoryModel(
        word: 'VolleyBall', iconName: Icons.sports_volleyball_outlined),
    CategoryModel(word: 'Tennis', iconName: Icons.sports_tennis_outlined),
    CategoryModel(word: 'Equestrianism', iconName: Icons.bedroom_baby_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Start',
              style: TextStyle(
                fontSize: 26,
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Activity',
              style: TextStyle(
                fontSize: 26,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomCategory(
              word: categories[index].word,
              iconname: categories[index].iconName,
            );
          },
        ),
      ),
    );
  }
}
