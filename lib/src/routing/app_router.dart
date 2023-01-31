import 'package:go_router/go_router.dart';
import 'package:hotel_booking_ui/src/screens/screens_exports.dart';

enum AppRoutes { landingScreen }

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
  ],
);
