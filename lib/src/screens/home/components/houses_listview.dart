import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/screens/home/components/house_widget.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import '../models/fake_data.dart';
import 'animated_listview_widget.dart';

class HousesListview extends StatelessWidget {
  const HousesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final indexes = [0, 1, 2];
    final data = [for (var i in indexes) resorts[i]];
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.forty,
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
          child: HouseWidget(house: data[index]),
        ),
      ),
    );
  }
}
