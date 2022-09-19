// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      nameSpace: json['nameSpace'] as String,
      adminLevels: (json['adminLevels'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'nameSpace': instance.nameSpace,
      'adminLevels':
          instance.adminLevels.map((k, e) => MapEntry(k.toString(), e)),
    };
