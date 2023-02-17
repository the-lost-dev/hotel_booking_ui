import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/routing/app_router.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import '../models/house.dart';

class HouseWidget extends StatelessWidget {
  const HouseWidget({
    Key? key,
    required this.house,
    required this.index,
  }) : super(key: key);

  final House house;
  final String index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        AppRoutes.details.name,
        params: {'houseIndex': index},
      ),
      child: Hero(
        tag: house.name,
        child: Container(
          padding: const EdgeInsets.all(AppSizes.ten),
          width: SizeConfig.blockSizeHorizontal * AppSizes.sixty,
          height: SizeConfig.blockSizeVertical * AppSizes.thirtySix,
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
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: AppColors.brown,
                                ),
                          ),
                          TextSpan(
                            text: '/night',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: AppColors.grey500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    gapH2,
                    IconTextWidget(
                      isSVG: true,
                      svgIcon: AppIcons.locationIcon,
                      iconColor: AppColors.grey500,
                      title: house.location,
                    ),
                    const SizedBox(height: AppSizes.six),
                    IconTextWidget(
                      icon: Icons.layers_rounded,
                      iconColor: AppColors.grey500,
                      title: '${house.measurement} ${AppStrings.sqft}',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
