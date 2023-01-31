import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

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
          onPressed: () => null, //TODO: IMPLEMENT NAVIGATION
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
