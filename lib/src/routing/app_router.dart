import 'package:go_router/go_router.dart';
import 'package:hotel_booking_ui/src/screens/details/details_screen.dart';
import 'package:hotel_booking_ui/src/screens/home/models/fake_data.dart';
import 'package:hotel_booking_ui/src/screens/screens_exports.dart';

enum AppRoutes { landing, home, details }

final router = GoRouter(
  initialLocation: '/',
  routes: [
    // GoRoute(
    //   path: '/',
    //   name: AppRoutes.landing.name,
    //   builder: (context, state) => const LandingScreen(),
    //   routes: [
    GoRoute(
      path: '/', //home
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'details/:houseIndex',
          name: AppRoutes.details.name,
          builder: (context, state) {
            final index = int.parse(state.params['houseIndex']!);
            return HouseDetailsScreen(house: resorts[index]);
          },
        ),
      ],
      //   ),
      // ],
    ),
  ],
);
