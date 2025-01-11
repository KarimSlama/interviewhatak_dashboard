import 'package:get_it/get_it.dart';
import 'package:interviewhatak_dashboard/core/networking/categories/categories_service.dart';
import 'package:interviewhatak_dashboard/core/networking/categories/categories_service_impl.dart';
import 'package:interviewhatak_dashboard/core/networking/fields/fields_service.dart';
import 'package:interviewhatak_dashboard/core/networking/fields/fields_service_impl.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/repository/category_repository.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/repository/field_repository.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// CATEGORIES
  getIt.registerLazySingleton<CategoriesService>(() => CategoriesServiceImpl());
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt()));
  getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));

  getIt.registerLazySingleton<FieldsService>(() => FieldsServiceImpl());

  getIt.registerLazySingleton<FieldRepository>(() => FieldRepository(getIt()));

  getIt.registerFactory<FieldCubit>(() => FieldCubit(getIt()));
}
