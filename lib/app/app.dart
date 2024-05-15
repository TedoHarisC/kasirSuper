import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir Super',
      debugShowCheckedModeBanner: false,
      theme: LightTheme(AppColors.green).theme,
      home: const SplashScreen(),
    );
  }
}
