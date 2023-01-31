import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/config/config_exports.dart';
import 'package:hotel_booking_ui/src/routing/app_router.dart';

class HotelBookingUI extends StatelessWidget {
  const HotelBookingUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
