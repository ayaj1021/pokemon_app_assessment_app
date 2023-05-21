import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_pokemon_app/screens/splash_screen%20.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
            path: "homescreen",
            builder: (context, state) => const HomeScreen(),
          )
        ])
  ]);
}
