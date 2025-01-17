import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/controller/field_state.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/model/field_model.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/fields/data/repository/field_repository.dart';

class FieldCubit extends Cubit<FieldState> {
  final FieldRepository fieldRepository;

  FieldCubit(this.fieldRepository) : super((FieldState.initial()));
  final Map<String, Color> colors = {
    'lavender': Color(0xffB3A7D9),
    'lightBlue': Color(0xffA8D0E6),
    'peach': Color(0xffFAD0C4),
    'palePink': Color(0xffF4C6C2),
    'mintGreen': Color(0xffB7E4C7),
    'lightGray': Color(0xffD3D3D3),
    'softYellow': Color(0xffF9E4B7),
    'babyBlue': Color(0xffB4D8E7),
    'lightCoral': Color(0xffF9A3B1),
    'powderBlue': Color(0xffB0C9E4),
  };
  TextEditingController fieldNameController = TextEditingController();
  TextEditingController fieldDescController = TextEditingController();
  final fieldFormKey = GlobalKey<FormState>();
  var selectedCategory;
  var selectedColorValue;
  var selectedColorName;
  var selectedColorHex;

  List<String> fields = [];

  Future<void> createNewField(selectedCategory, selectedColor) async {
    final result = await fieldRepository.createNewField(
      FieldsModel(
        fieldName: fieldNameController.text,
        fieldDate: DateTime.now(),
        categoryName: selectedCategory,
        color: selectedColor,
        description: fieldDescController.text,
      ),
    );
    result.when(
      success: (data) => emit(FieldState.success()),
      failure: (error) => emit(FieldState.error(error: error)),
    );
  }

  void changeCategoryItem(category) {
    if (category != null) {
      selectedCategory = category;
      emit(FieldState.changed(category));
    } else
      emit(FieldState.error(error: 'Does\'nt exist Category'));
  }

  void changeColorItem(color) {
    if (colors.containsKey(color)) {
      selectedColorName = color;
      selectedColorValue = colors[color];

      final red = selectedColorValue!.red.toRadixString(16).padLeft(2, '0');
      final green = selectedColorValue!.green.toRadixString(16).padLeft(2, '0');
      final blue = selectedColorValue!.blue.toRadixString(16).padLeft(2, '0');

      selectedColorHex = '$red$green$blue';

      emit(FieldState.changed(selectedColorHex));
    } else
      emit(FieldState.error(error: 'Does\'nt exist Color'));
  }

  Future<void> getFields(String categoryName) async {
    emit(FieldState.loading());
    final result = await fieldRepository.getFields(categoryName);
    result.when(
      success: (data) {
        fields = [];
        print('the data comes from fields firestore is ${data.length}');
        fields = data;
        emit(FieldState.success());
      },
      failure: (error) => emit(FieldState.error(error: error)),
    );
  }
}
