import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/src/constants/constants_exports.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: AppColors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.grey500,
      iconSize: AppSizes.twentyEight,
      selectedLabelStyle: Theme.of(context).textTheme.labelSmall,
      unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          activeIcon: Icon(Icons.shopping_bag),
          label: AppStrings.orders,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmarks_outlined),
          activeIcon: Icon(Icons.bookmarks),
          label: AppStrings.save,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          activeIcon: Icon(Icons.chat),
          label: AppStrings.chatHost,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          activeIcon: Icon(Icons.person),
          label: AppStrings.profile,
        ),
      ],
    );
  }
}
