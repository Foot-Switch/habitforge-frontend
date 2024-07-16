import 'package:habitforge_frontend/application/view_models/base_view_model.dart';
import 'package:habitforge_frontend/data/repositories/labels_repository.dart';
import 'package:habitforge_frontend/domain/label.dart';

class LabelsViewModel extends BaseViewModel {
  LabelsViewModel(super.ref, this.labelsRepository);

  final LabelsRepository labelsRepository;

  Future<List<Label>> getLabels() => labelsRepository.getLabels();
}
