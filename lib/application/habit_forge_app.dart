import 'package:flutter/material.dart';
import 'package:habitforge_frontend/application/common/app_colors.dart';
import 'package:habitforge_frontend/application/common/routing/router.dart';

class HabitForgeApp extends StatelessWidget {
  const HabitForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.habitForgeGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'HabitForge',
      routerConfig: router,
    );
  }
}
