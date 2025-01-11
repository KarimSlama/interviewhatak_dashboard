import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/field_model.dart';

abstract class FieldsService{
  Future<ServerResult<void>> createField(FieldsModel fieldModel);
}