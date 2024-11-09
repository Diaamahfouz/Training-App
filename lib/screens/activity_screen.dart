import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';

class ActivityScreen extends StatelessWidget {
  static const String routeName = '/activity';

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
    );
  }
}
