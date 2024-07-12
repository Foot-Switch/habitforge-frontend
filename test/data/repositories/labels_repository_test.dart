import 'package:flutter_test/flutter_test.dart';
import 'package:habitforge_frontend/data/repositories/labels_repository.dart';
import 'package:mockito/mockito.dart';

import '../common/test_data_generator.dart';
import '../test_tools/mocks/api_mocks.mocks.dart';

main() {
  final mockLabelsApi = MockLabelsApi();
  final labelsRepository = LabelsRepository(mockLabelsApi);
  final testLabelsResponseList = TestDataGenerator.generateTestLabelResponseList();

  test("getLabels returns a list of Labels", () async {
    // Given
    when(mockLabelsApi.getLabels()).thenAnswer((_) => Future.value(testLabelsResponseList));

    // When
    final response = await labelsRepository.getLabels();

    // Then
    verify(mockLabelsApi.getLabels()).called(1);
    expect(response.length, testLabelsResponseList.length);
  });
}
