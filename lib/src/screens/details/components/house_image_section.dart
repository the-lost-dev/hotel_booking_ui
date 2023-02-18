import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

class HouseImageSection extends StatelessWidget {
  const HouseImageSection({
    Key? key,
    required this.imagePath,
    required this.houseName,
  }) : super(key: key);

  final String imagePath;
  final String houseName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.fortyEight,
      child: Hero(
        
        tag: houseName,
        child: Container(
          padding: const EdgeInsets.all(AppSizes.twenty),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
          child: SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: const ColoredContainer(
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: AppSizes.thirty,
                      ),
                    ),
                  ),
                  ColoredContainer(
                    padding: AppSizes.fourteen,
                    child: Text(
                      AppStrings.details,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  const ColoredContainer(
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      size: AppSizes.thirty,
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
