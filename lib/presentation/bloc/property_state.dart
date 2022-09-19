part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState.initial() = _Initial;
  const factory PropertyState.loading() = _Loading;
  const factory PropertyState.success({required Property property}) = _Success;
  const factory PropertyState.error({required String message}) = _Error;
}