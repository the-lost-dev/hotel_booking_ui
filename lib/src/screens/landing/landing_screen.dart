import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

import 'components/auth_section.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical * AppSizes.sixty,
            child: SvgPicture.asset(
              'assets/bg1.svg',
              fit: BoxFit.cover,
            ),
          ),
          const AuthSection(),
        ],
      ),
    );
  }
}
