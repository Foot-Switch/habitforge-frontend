import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';
import 'package:habitforge_frontend/data/remote/backend/api/labels_api.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../common/test_data_generator.dart';
import '../../../test_tools/common/api_test_tools.dart';

void main() {
  final labelsApi = LabelsApi(testDio);

  final testLabelResponseList = TestDataGenerator.generateTestLabelResponseList();

  test('getLabels returns a list of LabelResponse', () async {
    // Given
    enqueueResponse(HttpMethod.get, "/labels/v1", responseBody: testLabelResponseList);

    // When
    final result = await labelsApi.getLabels();

    // Then
    expect(result, isA<List<LabelResponse>>());
    expect(result.length, testLabelResponseList.length);
  });
}
