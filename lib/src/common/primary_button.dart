import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.btnTitle,
    required this.onPressed,
  }) : super(key: key);

  final String btnTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          btnTitle,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
