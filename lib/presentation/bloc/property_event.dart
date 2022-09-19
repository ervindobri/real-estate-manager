part of 'property_bloc.dart';

@freezed
class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.started() = _Started;
  // const factory PropertyEvent.fetchProperties() = _PropertiesListed;
  const factory PropertyEvent.fetchProperty({required int id}) = _PropertyFetched;
}