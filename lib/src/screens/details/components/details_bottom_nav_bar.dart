import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';
import 'package:intl/intl.dart';

class DetailsBottomNavBar extends StatelessWidget {
  const DetailsBottomNavBar({
    Key? key,
    required this.pricePerNight,
  }) : super(key: key);

  // final House house;
  final int pricePerNight;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: SizeConfig.blockSizeVertical * AppSizes.ten,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.twenty,
        vertical: AppSizes.ten,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.price,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: NumberFormat.simpleCurrency(locale: 'en-US')
                            .format(pricePerNight),
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: AppColors.brown,
                                ),
                      ),
                      TextSpan(
                        text: '/night',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.grey500,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          gapW2,
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: FilledButton(
                  style: FilledButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    backgroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.sixteen),
                    ),
                  ),
                  child: const Text(AppStrings.reserveNow),
                  onPressed: () => debugPrint('Reserved')),
            ),
          ),
        ],
      ),
    );
  }
}
