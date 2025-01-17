import 'package:freezed_annotation/freezed_annotation.dart';
part 'section_state.freezed.dart';

@freezed
class SectionState with _$SectionState {
  const factory SectionState.intial() = _Initial;
  const factory SectionState.loading() = Loading;
  const factory SectionState.changed() = Changed;
  const factory SectionState.loaded() = Loaded;
  const factory SectionState.error(String error) = Error;
}
