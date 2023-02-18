import 'package:flutter/material.dart';

import '../home/models/house.dart';
import 'components/details_bottom_nav_bar.dart';
import 'components/house_details_section.dart';
import 'components/house_image_section.dart';

class HouseDetailsScreen extends StatelessWidget {
  const HouseDetailsScreen({
    Key? key,
    required this.house,
  }) : super(key: key);

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DetailsBottomNavBar(
        pricePerNight: house.pricePerNight,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            HouseImageSection(
              houseName: house.name,
              imagePath: house.imagePath,
            ),
            HouseDetailsSection(
              houseName: house.name,
              numOfBedRooms: house.numOfBedrooms,
              numOfBathRooms: house.numOfBathrooms,
              houseLocation: house.location,
              houseOwnerName: house.ownerName,
              houseMeasurement: house.measurement,
              houseDescription: house.description,
            ),
          ],
        ),
      ),
    );
  }
}
