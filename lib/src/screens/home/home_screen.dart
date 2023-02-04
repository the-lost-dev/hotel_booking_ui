import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/size_config.dart';
import 'package:hotel_booking_ui/src/utils/size_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.twenty),
          child: Column(
            children: [
              const LocationNotificationsRow(),
              gapH4,
              const SearchField(),
            ],
          ),
        ),
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
                const Icon(Icons.location_pin, color: AppColors.brown),
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
        Container(
          padding: const EdgeInsets.all(AppSizes.ten),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSizes.sixty),
          ),
          child: Stack(
            children: [
              const Icon(
                Icons.notifications_none_outlined,
                size: AppSizes.thirty,
              ),
              Positioned(
                right: AppSizes.six,
                top: AppSizes.four,
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

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_outlined, size: AppSizes.thirty),
          hintText: 'Search here...',
          contentPadding: const EdgeInsets.all(AppSizes.twentyFour),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              // VerticalDivider(
              //   color: Colors.red,
              //   thickness: 13,
              //   indent: 20,
              //   endIndent: 8,
              //   width: 20,
              // ),
              // Icon(Icons.filter_tilt_shift)
            ],
          ),
        ),
      ),
    );
  }
}
