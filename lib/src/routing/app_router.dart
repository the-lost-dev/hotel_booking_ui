import 'package:go_router/go_router.dart';
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

    //   ],
    // ),
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
