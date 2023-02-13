import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.thirty),
      ),
      child: TextField(
        cursorColor: AppColors.black,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.black,
            ),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: AppStrings.searchHere,
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.grey100,
              ),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(AppSizes.twelve),
            child: SvgPicture.asset(
              AppIcons.searchIcon,
              colorFilter: const ColorFilter.mode(
                AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: Container(
            width: AppSizes.sixtyFour,
            padding: const EdgeInsets.all(AppSizes.twelve),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const VerticalDivider(
                    thickness: AppSizes.two,
                    color: AppColors.grey100,
                  ),
                  SvgPicture.asset(
                    AppIcons.filterIcon,
                    colorFilter: const ColorFilter.mode(
                      AppColors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
