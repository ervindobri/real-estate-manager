// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'location.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String nameSpace,
    required Map<int, String> adminLevels,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);

}


extension LocationExt on Location {
  String get displayName => adminLevels[8] ?? "";

}