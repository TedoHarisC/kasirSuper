import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/home/pages/pages.dart';
import 'package:kasirsuper/features/settings/settings.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const ProfilePage(),
      );
    default:
      return MaterialPageRoute(builder: (context) {
        return const Scaffold(
          body: Center(
            child: RegularText(
              'Page Not Found',
              textAlign: TextAlign.center,
            ),
          ),
        );
      });
  }
}
