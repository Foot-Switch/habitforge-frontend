import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/application/common/router.dart';
import 'package:habitforge_frontend/application/common/utils.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    runDuringInit(() {
      _proceedToNextScreen(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/cover.png"),
          ),
        ),
      ),
    );
  }

  void _proceedToNextScreen(BuildContext context) async {
    openScreen(context, labelsScreenPath);
  }
}
