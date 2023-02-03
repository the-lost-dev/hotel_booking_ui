import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/routing/app_router.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import 'already_have_account_widget.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.twenty),
        child: Column(
          children: [
            gapH2,
            Text(
              AppStrings.landingTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            gapH2,
            Text(
              AppStrings.landingSubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            PrimaryButton(
              btnTitle: AppStrings.register,
              onPressed: () => context.pushNamed(AppRoutes.home.name),
            ),
            const AlreadyHaveAccountWidget(),
          ],
        ),
      ),
    );
  }
}
