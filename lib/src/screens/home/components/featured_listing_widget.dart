import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';
import 'package:intl/intl.dart';

import '../models/house.dart';

class FeaturedListingWidget extends StatelessWidget {
  const FeaturedListingWidget({
    Key? key,
    required this.featuredHouse,
  }) : super(key: key);

  final House featuredHouse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.ten),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.twenty),
      ),
      child: Column(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical * AppSizes.twentyTwo,
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
                featuredHouse.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          gapH2,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    featuredHouse.name,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: NumberFormat.simpleCurrency(locale: 'en-US')
                                  .format(featuredHouse.discountPrice),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: AppSizes.eighteen,
                                    color: AppColors.brown,
                                  ),
                            ),
                            TextSpan(
                              text: '/night',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: AppSizes.eighteen,
                                    color: AppColors.grey500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        NumberFormat.simpleCurrency(locale: 'en-US')
                            .format(featuredHouse.pricePerNight),
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: AppSizes.eighteen,
                                  color: AppColors.grey500,
                                ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: AppSizes.six),
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
                      featuredHouse.location,
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
                    '${featuredHouse.measurement} Sqft',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
