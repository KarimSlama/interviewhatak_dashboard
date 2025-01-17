import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interviewhatak_dashboard/core/helpers/app_constants.dart';
import 'package:interviewhatak_dashboard/core/networking/sections/section_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/model/section_model.dart';

class SectionServiceImpl implements SectionService {
  @override
  Future<ServerResult<List<SectionModel>>> getSections(String fieldName) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection('categories')
          .doc(Constants.categoryName)
          .collection('fields')
          .doc(fieldName)
          .collection('sections')
          .get();
      Constants.fieldName = fieldName;
      final sections = response.docs.map((doc) {
        return SectionModel.fromJson(doc.data());
      }).toList();
      return ServerResult.success(sections);
    } catch (error) {
      return ServerResult.failure('Failed to fetch Sections $error');
    }
  }

  @override
  Future<ServerResult<void>> createSection(SectionModel sectionModel) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection('categories')
          .doc(sectionModel.categoryName)
          .collection('fields')
          .doc(sectionModel.fieldName)
          .collection('sections')
          .doc(sectionModel.sectionName)
          .set(sectionModel.toJson());
      return ServerResult.success(response);
    } catch (error) {
      print(
          'The Error in Section Service Impl with create new Section is $error');
      return ServerResult.failure('The Error in Section is $error');
    }
  }
}
