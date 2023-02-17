import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import 'components/body.dart';
import 'components/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: HomeBody(),
    );
  }
}
