import 'package:flutter_test/flutter_test.dart';
import 'package:habitforge_frontend/data/di/repository_provider.dart';
import 'package:mockito/mockito.dart';

import '../../data/common/test_data_generator.dart';
import '../test_tools/common/view_model_test_utils.dart';
import '../test_tools/mocks/repository_mocks.mocks.dart';

main() {
  final mockLabelsRepository = MockLabelsRepository();
  final mockOverride = labelsRepositoryProvider.overrideWithValue(mockLabelsRepository);
  final testLabels = TestDataGenerator.generateTestLabels();

  testWidgets("getLabels returns a list of Labels from the repository", (WidgetTester tester) async {
    // Given
    final ref = await loadWidgetRef(tester, providerOverrides: [mockOverride]);
    final labelsViewModel = getNewViewModelInstance(ref, labelsRepositoryProvider);
    when(mockLabelsRepository.getLabels()).thenAnswer((_) => Future.value(testLabels));

    // When
    final result = await labelsViewModel.getLabels();

    // Then
    expect(result.length, testLabels.length);
    verify(mockLabelsRepository.getLabels()).called(1);
  });
}
