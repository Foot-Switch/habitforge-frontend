import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:habitforge_frontend/application/common/routing/route_graph.dart';

final router = GoRouter(
  initialLocation: splashScreenPath,
  routes: routeGraph,
);

void openScreen(BuildContext context, String path, {bool replace = false}) {
  if (replace) {
    context.replace(path);
  } else {
    context.go(path);
  }
}
