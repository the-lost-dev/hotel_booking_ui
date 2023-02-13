import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import '../models/house.dart';

class HouseWidget extends StatelessWidget {
  const HouseWidget({
    Key? key,
    required this.house,
  }) : super(key: key);

  final House house;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.ten),
      width: SizeConfig.blockSizeHorizontal * AppSizes.sixty,
      height: SizeConfig.blockSizeVertical * AppSizes.forty,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.twenty),
      ),
      child: Column(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical * AppSizes.sixteen,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.twenty),
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey500.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: AppSizes.twelve,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.twenty),
              child: Image.asset(
                house.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          gapH2,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  house.name,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: AppSizes.six),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$${house.pricePerNight}',
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
                gapH2,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.locationIcon,
                      colorFilter: const ColorFilter.mode(
                        AppColors.grey500,
                        BlendMode.srcIn,
                      ),
                    ),
                    gapW2,
                    Expanded(
                      child: Text(
                        house.location,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.six),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.layers_rounded,
                      color: AppColors.grey500,
                    ),
                    gapW2,
                    Text(
                      '${house.measurement} Sqft',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
