import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                // const Icon(Icons.location_pin, color: AppColors.brown),
                SvgPicture.asset(
                  AppIcons.locationIcon,
                  color: AppColors.brown,
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
      // padding: const EdgeInsets.symmetric(
      //   vertical: AppSizes.ten,
      //   horizontal: AppSizes.sixteen,
      // ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.thirty),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(AppSizes.twelve),
            child: SvgPicture.asset(AppIcons.searchIcon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(AppSizes.twelve),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: AppColors.grey100,
                    thickness: AppSizes.two,
                  ),
                  gapW2,
                  SvgPicture.asset(AppIcons.filterIcon),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// class SearchBox extends StatelessWidget {
//   const SearchBox({
//     Key key,
//     this.onChanged,
//   }) : super(key: key);

//   final ValueChanged onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(kDefaultPadding),
//       padding: EdgeInsets.symmetric(
//         horizontal: kDefaultPadding,
//         vertical: kDefaultPadding / 4, // 5 top and bottom
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.4),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: TextField(
//         onChanged: onChanged,
//         style: TextStyle(color: Colors.white),
//         decoration: InputDecoration(
//           enabledBorder: InputBorder.none,
//           focusedBorder: InputBorder.none,
//           icon: SvgPicture.asset("assets/icons/search.svg"),
//           hintText: 'Search',
//           hintStyle: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }