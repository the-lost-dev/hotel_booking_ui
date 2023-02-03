import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/constants/app_colors.dart';
import 'package:hotel_booking_ui/src/constants/app_icons.dart';
import 'package:hotel_booking_ui/src/constants/app_sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: Column(children: const [
          LocationNotificationsRow(),
        ]),
      ),
    );
  }
}

class LocationNotificationsRow extends StatelessWidget {
  const LocationNotificationsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text('Current Location'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcons.locationIcon),
                Text('Kaduna, Nigeria'),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSizes.ten),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.twenty),
              ),
              child: SvgPicture.asset(AppIcons.notificationsIcon),
            ),
          ],
        ),
      ],
    );
  }
}
