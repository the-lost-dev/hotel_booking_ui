import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

import 'already_have_account_widget.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.twenty,
          vertical: AppSizes.twenty,
        ),
        child: Column(
          children: [
            const SizedBox(height: AppSizes.forty),
            Text(
              AppStrings.landingTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: AppSizes.twenty),
            Text(
              AppStrings.landingSubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            PrimaryButton(
              btnTitle: AppStrings.register,
              onPressed: () => null, // TODO: IMPLEMENT NAVIGATION
            ),
            const SizedBox(height: AppSizes.ten),
            const AlreadyHaveAccountWidget(),
          ],
        ),
      ),
    );
  }
}
