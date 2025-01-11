import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/model/categories_model.dart';

abstract class CategoriesService {
  Future<ServerResult<void>> createCategory(CategoriesModel categoriesModel);

  Future<ServerResult<List<String>>> getCategories();
}
