import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/src/constants/constants_exports.dart';
import 'package:hotel_booking_ui/src/screens/home/models/fake_data.dart';
import 'package:hotel_booking_ui/src/utils/utils_exports.dart';

import 'components/featured_listing_widget.dart';
import 'components/houses_listview.dart';
import 'components/location_notifications_row.dart';
import 'components/search_field.dart';
import 'components/view_more.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
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
      ),
    );
  }
}
