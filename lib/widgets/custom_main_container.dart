import 'package:flutter/material.dart';
import 'package:training/constants/constants.dart';

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kSecondaryColor,
                    kPrimaryColor,
                  ])),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '''  Start Strong And 
  Set Your Fitness
  Goals ''',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: 18,
          bottom: 18,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 60,
            width: 170,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: const Center(
              child: Text(
                'Start Exercise',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: -10,
          child: SizedBox(
              width: 150,
              child: Image.asset(
                'assets/images/trainerbg.png',
              )),
        ),
      ],
    );
  }
}
