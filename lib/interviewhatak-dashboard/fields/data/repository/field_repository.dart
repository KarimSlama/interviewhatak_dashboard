import 'package:interviewhatak_dashboard/core/networking/fields/fields_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/field_model.dart';

class FieldRepository {
  final FieldsService fieldsService;

  FieldRepository(this.fieldsService);

  Future<ServerResult<void>> createNewField(FieldsModel fieldModel) async {
    return await fieldsService.createField(fieldModel);
  }
}
