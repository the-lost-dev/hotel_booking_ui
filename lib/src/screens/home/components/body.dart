import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import '../models/fake_data.dart';
import 'home_components.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.twenty),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const LocationNotificationsRow(),
            gapH4,
            const SearchField(),
            gapH4,
            const ViewAll(auxillaryText: AppStrings.houseNearYou),
            gapH2,
            const HousesListview(),
            gapH4,
            const ViewAll(
              auxillaryText: AppStrings.featuredListings,
              fontSize: AppSizes.twentyFour,
            ),
            gapH2,
            FeaturedListingWidget(featuredHouse: resorts[4])
          ],
        ),
      ),
    );
  }
}
