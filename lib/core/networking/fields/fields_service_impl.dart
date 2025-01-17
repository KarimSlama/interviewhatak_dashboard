import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interviewhatak_dashboard/core/helpers/app_constants.dart';
import 'package:interviewhatak_dashboard/core/networking/fields/fields_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/field_model.dart';

class FieldsServiceImpl implements FieldsService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<ServerResult<void>> createField(FieldsModel fieldModel) async {
    try {
      final response = await _firestore
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

  @override
  Future<ServerResult<List<String>>> getFields(categoryName) async {
    try {
      final response = await _firestore
          .collection('categories')
          .doc(categoryName)
          .collection('fields')
          .get();

      // Constants.categoryName = categoryName;

      final fields = response.docs.map((doc) {
        final data = doc.data();
        return data['field_name'] as String;
      }).toList();
      return ServerResult.success(fields);
    } catch (error) {
      return ServerResult.failure('The Error in Get Fields is $error');
    }
  }
}
