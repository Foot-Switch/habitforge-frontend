import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';
import 'package:habitforge_frontend/domain/label.dart';

class LabelMapper {
  static labelToLabelResponse(Label label) {
    return LabelResponse()
      ..id = label.id
      ..name = label.name
      ..translations = Map.from(label.translations);
  }

  static labelResponseToLabel(LabelResponse labelResponse) {
    return Label()
      ..id = labelResponse.id
      ..name = labelResponse.name
      ..translations = Map.from(labelResponse.translations);
  }

  static List<LabelResponse> mapLabelsToLabelResponses(List<Label> labels) {
    return labels.map<LabelResponse>((label) => labelToLabelResponse(label)).toList();
  }

  static List<Label> mapLabelResponsesToLabels(List<LabelResponse> labelResponses) {
    return labelResponses.map<Label>((labelResponse) => labelResponseToLabel(labelResponse)).toList();
  }
}
