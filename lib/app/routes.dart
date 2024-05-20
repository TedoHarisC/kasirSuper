import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
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
