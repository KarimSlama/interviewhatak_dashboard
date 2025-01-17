import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/model/section_model.dart';

abstract class SectionService {
  Future<ServerResult<void>> createSection(SectionModel sectionModel);
  Future<ServerResult<List<SectionModel>>> getSections(String fieldName);
}
