import 'package:flutter/material.dart';
import 'package:habitforge_frontend/application/common/colors/app_colors.dart';
import 'package:habitforge_frontend/application/common/colors/color_tools.dart';

class HabitForgeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HabitForgeAppBar({super.key, required this.title});

  final String title;
  final backgroundColor = AppColors.habitForgeGreen;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: getContrastingTextColor(backgroundColor),
        ),
      ),
      automaticallyImplyLeading: true,
      backgroundColor: backgroundColor,
    );
  }
}
