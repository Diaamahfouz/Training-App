import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';
import 'package:training/screens/activity_screen.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$category ",
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ActivityScreen.routeName);
                },
                child: const Row(
                  children: [
                    Text(
                      'See All ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
