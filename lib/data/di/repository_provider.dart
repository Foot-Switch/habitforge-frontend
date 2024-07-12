import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/data/di/api_provider.dart';
import 'package:habitforge_frontend/data/repositories/labels_repository.dart';

final labelsRepositoryProvider = Provider((ref) => LabelsRepository(ref.read(labelsApiProvider)));
