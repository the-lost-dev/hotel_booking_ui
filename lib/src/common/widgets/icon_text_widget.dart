import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    required this.iconColor,
    required this.title,
    this.isSVG = false,
    this.isAuxillary = false,
    this.fontSize = AppSizes.eighteen,
    this.icon,
    this.svgIcon,
  }) : super(key: key);

  final bool isSVG;
  final double fontSize;
  final bool isAuxillary;
  final Color iconColor;
  final IconData? icon;
  final String? svgIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final Widget iconWidget = isSVG
        ? SvgPicture.asset(
            svgIcon!,
            colorFilter: ColorFilter.mode(
              iconColor,
              BlendMode.srcIn,
            ),
          )
        : Icon(
            icon,
            color: iconColor,
          );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        iconWidget,
        gapW2,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: fontSize,
                  ),
            ),
            if (isAuxillary) ...[
              gapW2,
              const Icon(Icons.verified_rounded, color: AppColors.brown),
            ]
          ],
        ),
      ],
    );
  }
}
