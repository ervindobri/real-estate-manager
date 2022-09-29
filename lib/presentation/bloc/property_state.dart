part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  ///_Initial is a too wage name. Once the app starts growing and has multiple pages,
  ///_Initial will be confusing, because it's not clear witch states initial it is
  ///A better idea Would be PropertyInitialState, or PropertyStateInitial.
  ///Maybe InitialPropertyState, but that way when you start typing "Initial down the line
  ///the IDEA would recommend all sorts of Initial states to you.
  ///Also, if you leave out the _ private, you can use the State name
  ///all around in your app, for example in if statements
  const factory PropertyState.initial() = _Initial;
  const factory PropertyState.loading() = _Loading;
  const factory PropertyState.success({required Property property}) = _Success;
  const factory PropertyState.error({required String message}) = _Error;
}
