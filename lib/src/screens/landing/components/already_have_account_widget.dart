import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/routing/app_router.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppStrings.haveAccount,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: AppSizes.sixteen,
              ),
        ),
        TextButton(
          onPressed: () => context.pushNamed(AppRoutes.home.name),
          child: Text(
            AppStrings.login,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: AppColors.brown,
                ),
          ),
        ),
      ],
    );
  }
}
