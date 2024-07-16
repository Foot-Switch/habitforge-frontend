import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/application/view_models/labels_view_model.dart';
import 'package:habitforge_frontend/data/di/repository_provider.dart';

final labelsViewModelProvider = Provider((ref) => LabelsViewModel(ref, ref.read(labelsRepositoryProvider)));
