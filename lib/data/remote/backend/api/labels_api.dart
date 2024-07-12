import 'package:dio/dio.dart';
import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';
import 'package:habitforge_frontend/domain/label.dart';
import 'package:retrofit/retrofit.dart';

part 'labels_api.g.dart';

@RestApi(baseUrl: "v1/labels/")
abstract class LabelsApi {
  factory LabelsApi(Dio dio) = _LabelsApi;

  @GET("")
  Future<List<LabelResponse>> getLabels();
}
