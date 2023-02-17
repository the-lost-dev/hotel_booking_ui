import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/common/common_exports.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import '../models/fake_data.dart';
import 'home_components.dart';

class HousesListview extends StatelessWidget {
  const HousesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final indexes = [0, 1, 2];
    final data = [for (var i in indexes) resorts[i]];
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.thirtySix,
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => gapW4,
        itemBuilder: (_, index) => AnimatedListViewWidget(
          child: HouseWidget(house: data[index], index: index.toString()),
        ),
      ),
    );
  }
}
