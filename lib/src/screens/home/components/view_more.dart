import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({
    Key? key,
    required this.auxillaryText,
    this.onPressed,
    this.fontSize,
  }) : super(key: key);

  final String auxillaryText;
  final VoidCallback? onPressed;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          auxillaryText,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: fontSize,
              ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppStrings.viewAll,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        )
      ],
    );
  }
}
