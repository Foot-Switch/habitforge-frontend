import 'package:faker/faker.dart';
import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';
import 'dart:math';

import 'package:habitforge_frontend/domain/label.dart';

class TestDataGenerator {
  static const int randomListSizeLimit = 10;

  static final Faker faker = Faker();

  static Label generateTestLabel() {
    return Label()
      ..id = faker.randomGenerator.numbers(9, 1).join()
      ..name = faker.person.name()
      ..translations = {
        faker.randomGenerator.numbers(9, 1).join(): faker.person.name(),
        faker.randomGenerator.numbers(9, 1).join(): faker.person.name(),
      };
  }

  static List<Label> generateTestLabels() {
    int size = Random().nextInt(randomListSizeLimit) + 1;
    return List.generate(size, (_) => generateTestLabel());
  }

  static LabelResponse generateTestLabelDto() {
    return LabelResponse()
      ..id = faker.randomGenerator.numbers(9, 1).join()
      ..name = faker.person.name()
      ..translations = {
        faker.randomGenerator.numbers(9, 1).join(): faker.person.name(),
        faker.randomGenerator.numbers(9, 1).join(): faker.person.name(),
      };
  }

  static List<LabelResponse> generateTestLabelResponseList() {
    int size = Random().nextInt(randomListSizeLimit) + 1;
    return List.generate(size, (_) => generateTestLabelDto());
  }
}
