import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.word, required this.iconname});
  final String word;
  final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(2, 5),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  iconname,
                  color: kPrimaryColor,
                  size: 44,
                ),
              ),
              Text(
                ' $word',
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
