import 'package:flutter_test/flutter_test.dart';
import 'package:habitforge_frontend/data/remote/backend/api/labels_api.dart';
import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';

import '../../../common/test_data_generator.dart';
import '../../../test_tools/api_test_tools.dart';

void main() {
  final testLabelsApi = LabelsApi(testDio);
  final testLabelsResponseList = TestDataGenerator.generateTestLabelResponseList();

  test('getLabels returns a list of LabelResponse', () async {
    // Given
    enqueueResponse(HttpMethod.get, "", responseBody: testLabelsResponseList);

    // When
    final response = await testLabelsApi.getLabels();

    // Then
    expect(response, isA<List<LabelResponse>>());
    expect(response.length, testLabelsResponseList.length);
  });
}
