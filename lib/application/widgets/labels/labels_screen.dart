import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/application/common/view_model_handler.dart';
import 'package:habitforge_frontend/application/view_models/labels_view_model.dart';
import 'package:habitforge_frontend/application/view_models/view_model_provider.dart';
import 'package:habitforge_frontend/application/widgets/common/habit_forge_app_bar.dart';
import 'package:habitforge_frontend/application/widgets/labels/label_list_item.dart';
import 'package:habitforge_frontend/domain/label.dart';

class LabelsScreen extends ConsumerStatefulWidget {
  const LabelsScreen({super.key});

  @override
  ConsumerState<LabelsScreen> createState() => _LabelsScreenState();
}

class _LabelsScreenState extends ConsumerState<LabelsScreen> with ViewModelHandler {
  late LabelsViewModel labelsViewModel = getNewViewModelInstance(ref, labelsViewModelProvider);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HabitForgeAppBar(
        title: "Labels",
      ),
      body: FutureBuilder(
        future: labelsViewModel.getLabels(),
        builder: (BuildContext context, AsyncSnapshot<List<Label>> snapshot) {
          final labels = snapshot.data ?? List.empty();
          return ListView.builder(
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return LabelListItem(
                  label: labels[index],
                );
              });
        },
      ),
    );
  }
}
