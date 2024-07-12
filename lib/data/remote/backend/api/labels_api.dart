import 'package:dio/dio.dart';
import 'package:habitforge_frontend/data/remote/backend/responses/label_response.dart';
import 'package:retrofit/retrofit.dart';

part 'labels_api.g.dart';

@RestApi()
abstract class LabelsApi {
  static const _apiPath = "/labels/v1";

  factory LabelsApi(Dio dio) = _LabelsApi;

  @GET(_apiPath)
  Future<List<LabelResponse>> getLabels();
}
