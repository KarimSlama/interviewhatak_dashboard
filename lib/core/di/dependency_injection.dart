import 'package:get_it/get_it.dart';
import 'package:interviewhatak_dashboard/core/networking/categories/categories_service.dart';
import 'package:interviewhatak_dashboard/core/networking/categories/categories_service_impl.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/repository/category_repository.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// CATEGORIES
  getIt.registerLazySingleton<CategoriesService>(() => CategoriesServiceImpl());
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt()));
  getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));
}
