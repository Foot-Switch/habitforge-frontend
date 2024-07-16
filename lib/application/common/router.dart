import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:habitforge_frontend/application/widgets/labels/labels_screen.dart';
import 'package:habitforge_frontend/application/widgets/splash/splash_screen.dart';

const splashScreenPath = "/";
const labelsScreenPath = "/labels";

final router = GoRouter(
  initialLocation: splashScreenPath,
  routes: [
    GoRoute(
      path: splashScreenPath,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: labelsScreenPath,
      builder: (context, state) => const LabelsScreen(),
    ),
  ],
);

void openScreen(BuildContext context, String path, {bool replace = false}) {
  if (replace) {
    context.replace(path);
  } else {
    context.go(path);
  }
}
