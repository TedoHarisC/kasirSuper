import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasirsuper/app/routes.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/blocs/blocs.dart';
import 'package:kasirsuper/features/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBloc(),
      child: MaterialApp(
        title: 'Kasir Super',
        debugShowCheckedModeBanner: false,
        theme: LightTheme(AppColors.green).theme,
        home: const SplashScreen(),
        onGenerateRoute: routes,
      ),
    );
  }
}
