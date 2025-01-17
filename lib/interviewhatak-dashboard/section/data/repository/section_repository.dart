import 'package:interviewhatak_dashboard/core/networking/sections/section_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/model/section_model.dart';

class SectionRepository {
  final SectionService sectionService;

  SectionRepository(this.sectionService);

  Future<ServerResult<void>> createNewSection(SectionModel sectionModel) async {
    return await sectionService.createSection(sectionModel);
  }
}
