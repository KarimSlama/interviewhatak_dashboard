import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/controller/section_state.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/model/section_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/data/repository/section_repository.dart';

class SectionCubit extends Cubit<SectionState> {
  final SectionRepository sectionRepository;
  SectionCubit(this.sectionRepository) : super(SectionState.intial());

  TextEditingController sectionNameController = TextEditingController();
  TextEditingController sectionDescController = TextEditingController();
  final sectionFormKey = GlobalKey<FormState>();
  var selectedField;
  var selectedCategory;
  var selectedDifficulty;

  Future<void> createNewSection(categoryName, fieldName, difficultyLvl) async {
    final result = await sectionRepository.createNewSection(SectionModel(
      sectionDifficulty: difficultyLvl,
      sectionName: sectionNameController.text,
      sectionDesc: sectionDescController.text,
      sectionImage:
          'https://img.freepik.com/free-psd/coffee-cup-icon-isolated-3d-render-illustration_47987-8773.jpg?w=740&t=st=1676148391~exp=1676148991~hmac=3f36ae283f0481c8ecea847777544b6fbb44b2b1858358af482e8be3423ebe04',
      sectionDate: DateTime.now().toString(),
      categoryName: categoryName,
      fieldName: fieldName,
    ));
    result.when(
      success: (data) {
        print('The Item Done Loaded');
        emit(SectionState.loaded());
      },
      failure: (error) => emit(SectionState.error(error)),
    );
  }

  void changeCategoryItem(category) {
    if (category != null) {
      selectedCategory = category;
      print('the selected category is $selectedCategory');
      emit(SectionState.changed());
    } else
      emit(SectionState.error('Does\'nt exist Category'));
  }

  void changeFieldItem(field) {
    if (field != null) {
      selectedField = field;
      print('the selected field is $selectedField');
      emit(SectionState.changed());
    } else
      emit(SectionState.error('Does\'nt exist Field'));
  }

  void changeFieldDifficulty(difficulty) {
    if (difficulty != null) {
      selectedDifficulty = difficulty;
      print('the selected Difficulty is $selectedDifficulty');
      emit(SectionState.changed());
    } else
      emit(SectionState.error('Does\'nt exist Field'));
  }
}
