import 'package:go_router/go_router.dart';
import 'package:habitforge_frontend/application/widgets/labels/labels_screen.dart';
import 'package:habitforge_frontend/application/widgets/splash/splash_screen.dart';

const splashScreenPath = "/";
const labelsScreenPath = "/labels";

final routeGraph = [
  GoRoute(
    path: splashScreenPath,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: labelsScreenPath,
    builder: (context, state) => const LabelsScreen(),
  ),
];