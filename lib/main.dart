import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_project/AirTravel/presentation/pages/home_details.dart';
import 'package:new_project/AirTravel/presentation/pages/home_page.dart';

import 'package:new_project/AirTravel/presentation/widgets/TourPackage_widget.dart';
GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: '/details',
          builder: (context, state) => HomeDetails(),
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}