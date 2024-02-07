import '../utils/not_found_page.dart';
import '../../features/login/presentation/views/login_screen.dart';
import '../../features/on_boarding/presentation/views/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
 static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
