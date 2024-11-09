import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails(
      {super.key,
      required this.word,
      required this.num,
      required this.iconname});
  final String word;
  final IconData iconname;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 130,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    iconname,
                    color: kPrimaryColor,
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
              Text(
                num,
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 28,
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
