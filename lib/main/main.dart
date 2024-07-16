import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/application/common/error_handler.dart';
import 'package:habitforge_frontend/application/habit_forge_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initHandlers();
  runApp(const ProviderScope(child: HabitForgeApp()));
}

Future<void> _initHandlers() async {
  await ErrorHandler.init();
}
