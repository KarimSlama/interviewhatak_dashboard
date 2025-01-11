import 'package:interviewhatak_dashboard/core/networking/categories/categories_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/model/categories_model.dart';

class CategoryRepository {
  final CategoriesService categoriesService;

  CategoryRepository(this.categoriesService);

  Future<ServerResult<void>> createNewCateogry(
      CategoriesModel categoriesModel) async {
    return await categoriesService.createCategory(categoriesModel);
  }

  Future<ServerResult<List<String>>> fetchingCategories() async {
    return await categoriesService.getCategories();
  }
}
