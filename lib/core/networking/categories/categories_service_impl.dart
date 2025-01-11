import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interviewhatak_dashboard/core/networking/categories/categories_service.dart';
import 'package:interviewhatak_dashboard/core/networking/server_result.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/model/categories_model.dart';

class CategoriesServiceImpl implements CategoriesService {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<ServerResult<void>> createCategory(
      CategoriesModel categoriesModel) async {
    try {
      final response = await firebaseFirestore
          .collection('categories')
          .doc(categoriesModel.categoryName)
          .set(categoriesModel.toJson());
      return ServerResult.success(response);
    } catch (error) {
      print(
          'The Error in Categories Service Impl with create new Category is $error');
      return ServerResult.failure('The Error is ${error}');
    }
  }

  @override
  Future<ServerResult<List<String>>> getCategories() async {
    try {
      final response =
          await FirebaseFirestore.instance.collection('categories').get();

      final categories = response.docs.map((doc) {
        final data = doc.data();
        return data['category_name'] as String;
      }).toList();

      return ServerResult.success(categories);
    } catch (error) {
      return ServerResult.failure('Failed to fetch categories: $error');
    }
  }

// @override
// Future<ServerResult<List<String>>> getCategories() async {
//   try {
//     final response =
//         await FirebaseFirestore.instance.collection('categories').get();
//     final categories = response.docs.map((doc) {
//       return CategoriesModel.fromJson(doc.data());
//     }).toList();
//     return ServerResult.success(response);
//   } catch (error) {
//     return ServerResult.failure('Failed to fetch categories$error');
//   }
// }
}
