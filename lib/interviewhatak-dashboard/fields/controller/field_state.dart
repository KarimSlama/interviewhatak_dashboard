import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_state.freezed.dart';

@freezed
class FieldState<T> with _$FieldState<T> {
  const factory FieldState.initial() = _Initial;

  const factory FieldState.loading() = FieldLoading;

  const factory FieldState.changed(T value) = FieldChanged;

  const factory FieldState.success() = FieldSuccess;

  const factory FieldState.error({required String error}) = FieldError;
}
