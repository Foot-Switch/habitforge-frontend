import 'package:flutter_test/flutter_test.dart';
import 'package:habitforge_frontend/data/remote/backend/mappers/label_mapper.dart';

import '../../../common/test_data_generator.dart';

void main() {
  final testLabel = TestDataGenerator.generateTestLabel();
  final testLabelResponse = TestDataGenerator.generateTestLabelResponse();
  final testLabels = TestDataGenerator.generateTestLabels();
  final testLabelResponseList = TestDataGenerator.generateTestLabelResponseList();

  test('labelToLabelResponse maps Label to LabelResponse correctly', () {
    // When
    final labelResponse = LabelMapper.labelToLabelResponse(testLabel);

    // Then
    expect(labelResponse.id, testLabel.id);
    expect(labelResponse.name, testLabel.name);
    expect(labelResponse.translations, testLabel.translations);
  });

  test('labelResponseToLabel maps LabelResponse to Label correctly', () {
    // When
    final label = LabelMapper.labelResponseToLabel(testLabelResponse);

    // Then
    expect(label.id, testLabelResponse.id);
    expect(label.name, testLabelResponse.name);
    expect(label.translations, testLabelResponse.translations);
  });

  test('mapLabelsToLabelResponses maps list of Labels to list of LabelResponses correctly', () {
    // When
    final labelResponses = LabelMapper.mapLabelsToLabelResponses(testLabels);

    // Then
    expect(labelResponses.length, testLabels.length);
    for (int i = 0; i < testLabels.length; i++) {
      expect(labelResponses[i].id, testLabels[i].id);
      expect(labelResponses[i].name, testLabels[i].name);
      expect(labelResponses[i].translations, testLabels[i].translations);
    }
  });

  test('mapLabelResponsesToLabels maps list of LabelResponses to list of Labels correctly', () {
    // When
    final labels = LabelMapper.mapLabelResponsesToLabels(testLabelResponseList);

    // Then
    expect(labels.length, testLabelResponseList.length);
    for (int i = 0; i < testLabelResponseList.length; i++) {
      expect(labels[i].id, testLabelResponseList[i].id);
      expect(labels[i].name, testLabelResponseList[i].name);
      expect(labels[i].translations, testLabelResponseList[i].translations);
    }
  });
}
