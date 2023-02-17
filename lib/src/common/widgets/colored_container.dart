import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    Key? key,
    this.padding = AppSizes.ten,
    this.color = AppColors.white,
    this.borderRadius = AppSizes.sixty,
    required this.child,
  }) : super(key: key);

  final double padding;
  final double borderRadius;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
