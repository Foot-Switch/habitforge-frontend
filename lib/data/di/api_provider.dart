import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/data/di/network_provider.dart';
import 'package:habitforge_frontend/data/remote/backend/api/labels_api.dart';

final labelsApiProvider = Provider((ref) => LabelsApi(ref.read(networkClientProvider)));