import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

class LocationNotificationsRow extends StatelessWidget {
  const LocationNotificationsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.currentLocation,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: AppSizes.two),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcons.locationIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.brown,
                    BlendMode.srcIn,
                  ),
                ),
                gapW2,
                Text(
                  'Kaduna, Nigeria',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: AppSizes.twenty,
                      ),
                ),
              ],
            ),
          ],
        ),
        ColoredContainer(
          child: Stack(
            children: [
              SvgPicture.asset(
                AppIcons.notificationIcon,
                width: AppSizes.thirtyTwo,
                height: AppSizes.thirtyTwo,
              ),
              Positioned(
                right: AppSizes.four,
                top: AppSizes.two,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.thirty),
                  child: const ColoredBox(
                    color: Colors.red,
                    child: SizedBox(
                      height: AppSizes.eight,
                      width: AppSizes.eight,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
