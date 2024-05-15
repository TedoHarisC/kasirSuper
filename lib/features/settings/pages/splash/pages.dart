import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MainAssets.logo,
                width: MediaQuery.of(context).size.width / 2,
              ),
              16.0.height, // Ini juga menggunakan extension yaitu sizedbox extension
              const HeadingText('Kasir Super'),
            ],
          ),
        ),
      ),
    );
  }
}
