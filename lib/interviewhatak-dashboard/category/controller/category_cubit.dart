import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_state.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/model/categories_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/data/repository/category_repository.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository categoryRepository;

  CategoryCubit(this.categoryRepository) : super(CategoryState.initial());

  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryDescController = TextEditingController();
  TextEditingController categoryImageController = TextEditingController();

  List<String> categoriesList = [];

  Future<void> createNewCategory() async {
    emit(CategoryState.loading());
    final result = await categoryRepository.createNewCateogry(
      CategoriesModel(
        categoryName: categoryNameController.text,
        categoryDesc: categoryDescController.text,
        categoryImage: categoryImageController.text,
      ),
    );
    result.when(
      success: (data) => emit(CategoryState.success(null)),
      failure: (error) => emit(CategoryState.error(error: error)),
    );
  }

  Future<void> getCategoriesName() async {
    emit(CategoryState.loading());
    final result = await categoryRepository.fetchingCategories();
    result.when(
      success: (categories) {
        emit(CategoryState.loading());
        categoriesList = [];
        categoriesList = categories;
        emit(CategoryState.success(categories));
      },
      failure: (error) {
        emit(CategoryState.error(error: error));
      },
    );
  }
}
