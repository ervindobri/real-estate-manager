// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      name: json['name'] as String,
      assignmentType: $enumDecode(_$TypeEnumMap, json['assignmentType']),
      estateTypes: (json['estateTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$EstateTypeEnumMap, e))
          .toList(),
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
      minFloorArea: json['minFloorArea'] as int?,
      maxFloorArea: json['maxFloorArea'] as int?,
      minUnitPrice: json['minUnitPrice'] as int?,
      maxUnitPrice: json['maxUnitPrice'] as int?,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'name': instance.name,
      'assignmentType': _$TypeEnumMap[instance.assignmentType]!,
      'estateTypes':
          instance.estateTypes.map((e) => _$EstateTypeEnumMap[e]!).toList(),
      'locations': instance.locations,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'minFloorArea': instance.minFloorArea,
      'maxFloorArea': instance.maxFloorArea,
      'minUnitPrice': instance.minUnitPrice,
      'maxUnitPrice': instance.maxUnitPrice,
    };

const _$TypeEnumMap = {
  Type.FOR_SALE: 'FOR_SALE',
  Type.FOR_RENT: 'FOR_RENT',
};

const _$EstateTypeEnumMap = {
  EstateType.HOUSE: 'HOUSE',
  EstateType.APARTMENT: 'APARTMENT',
  EstateType.ROOM: 'ROOM',
};
