import 'package:habitforge_frontend/data/remote/backend/api/labels_api.dart';
import 'package:habitforge_frontend/data/remote/backend/mappings/label_mapper.dart';
import 'package:habitforge_frontend/domain/label.dart';

class LabelsRepository {
  LabelsRepository(this._labelsApi);

  final LabelsApi _labelsApi;

  Future<List<Label>> getLabels() async {
    return LabelMapper.mapLabelResponsesToLabels(await _labelsApi.getLabels());
  }
}
