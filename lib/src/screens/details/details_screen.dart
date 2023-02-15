import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

import '../home/models/house.dart';

class HouseDetailsScreen extends StatelessWidget {
  const HouseDetailsScreen({
    Key? key,
    required this.house,
  }) : super(key: key);

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: AppStrings.heroTag,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
