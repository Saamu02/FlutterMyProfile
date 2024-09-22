import 'package:flutter/material.dart';
import 'package:my_profile/mobile/landing_page_mobile.dart';
import 'package:my_profile/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );

      default:
        // Return a fallback route if the route name is unknown
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
    }
  }
}
