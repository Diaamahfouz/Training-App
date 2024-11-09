import 'package:flutter/material.dart';
import 'package:training/widgets/custom_day_activity.dart';
import 'package:training/widgets/custom_details.dart';
import 'package:training/widgets/custom_main_container.dart';
import 'package:training/widgets/custom_line.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20,
      ),
      child: Column(
        children: [
          const CustomMainContainer(),
          const CustomLine(
            category: "Today's Activity ",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  CustomDetails(
                    word: 'Steps',
                    num: '1228',
                    iconname: Icons.do_not_step_sharp,
                  ),
                  CustomDetails(
                    word: 'Calories',
                    num: '829',
                    iconname: Icons.accessibility,
                  ),
                  CustomDetails(
                    word: 'BPM',
                    num: '881',
                    iconname: Icons.heart_broken,
                  ),
                ],
              ),
            ),
          ),
          const CustomLine(
            category: "Daily Activity ",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomDayActivity(
                    word: 'Sat',
                    num: '08',
                  ),
                  CustomDayActivity(
                    word: 'Sun',
                    num: '09',
                  ),
                  CustomDayActivity(
                    word: 'Mon',
                    num: '10',
                  ),
                  CustomDayActivity(
                    word: 'Tue',
                    num: '11',
                  ),
                  CustomDayActivity(
                    word: 'Wed',
                    num: '12',
                  ),
                  CustomDayActivity(
                    word: 'Thu',
                    num: '13',
                  ),
                  CustomDayActivity(
                    word: 'Fri',
                    num: '14',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
