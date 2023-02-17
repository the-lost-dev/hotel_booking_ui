import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

class HouseDetailsSection extends StatelessWidget {
  const HouseDetailsSection({
    Key? key,
    required this.houseName,
    required this.houseLocation,
    required this.houseOwnerName,
    required this.numOfBedRooms,
    required this.numOfBathRooms,
    required this.houseMeasurement,
    required this.houseDescription,
  }) : super(key: key);

  final String houseName;
  final String houseLocation;
  final String houseOwnerName;
  final String houseDescription;
  final int numOfBedRooms;
  final int numOfBathRooms;
  final int houseMeasurement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(AppSizes.twenty),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    houseName,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const ColoredContainer(
                  child: IconTextWidget(
                    iconColor: AppColors.black,
                    icon: Icons.share_outlined,
                    title: AppStrings.share,
                  ),
                ),
              ],
            ),
            gapH2,
            IconTextWidget(
              isSVG: true,
              svgIcon: AppIcons.locationIcon,
              iconColor: AppColors.grey500,
              title: houseLocation,
            ),
            gapH2,
            IconTextWidget(
              isAuxillary: true,
              icon: Icons.person_rounded,
              iconColor: AppColors.grey500,
              title: houseOwnerName,
            ),
            gapH2,
            ColoredContainer(
              color: AppColors.brown.withOpacity(.1),
              borderRadius: AppSizes.fourteen,
              padding: AppSizes.twenty,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextWidget(
                    fontSize: AppSizes.fourteen,
                    iconColor: AppColors.brown,
                    icon: Icons.bed_outlined,
                    title: '$numOfBedRooms ${AppStrings.bedRoom}',
                  ),
                  IconTextWidget(
                    fontSize: AppSizes.fourteen,
                    iconColor: AppColors.brown,
                    icon: Icons.bathtub_outlined,
                    title: '$numOfBathRooms ${AppStrings.bathRoom}',
                  ),
                  IconTextWidget(
                    fontSize: AppSizes.fourteen,
                    iconColor: AppColors.brown,
                    icon: Icons.layers_rounded,
                    title: '$houseMeasurement ${AppStrings.sqft}',
                  ),
                ],
              ),
            ),
            gapH2,
            Expanded(
              child: Text(
                houseDescription,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.black,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
