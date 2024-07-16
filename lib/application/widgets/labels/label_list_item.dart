import 'package:flutter/widgets.dart';
import 'package:habitforge_frontend/domain/label.dart';

class LabelListItem extends StatelessWidget {
  const LabelListItem({super.key, required this.label});

  final Label label;

  @override
  Widget build(BuildContext context) {
    return Text(label.name);
  }
}
