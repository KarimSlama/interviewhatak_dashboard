import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interviewhatak_dashboard/core/networking/fields/fields_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/field_model.dart';

class FieldsServiceImpl implements FieldsService {
  @override
  Future<ServerResult<void>> createField(FieldsModel fieldModel) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection('categories')
          .doc(fieldModel.categoryName)
          .collection('fields')
          .doc(fieldModel.fieldName)
          .set(fieldModel.toJson());
      return ServerResult.success(response);
    } catch (error) {
      print('The Error in Fields Service Impl with create new Field is $error');
      return ServerResult.failure('The Error in Fields is $error');
    }
  }
}
