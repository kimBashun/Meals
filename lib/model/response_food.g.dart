// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseFood _$ResponseFoodFromJson(Map<String, dynamic> json) {
  return ResponseFood((json['meals'] as List)
      ?.map((e) => e == null ? null : Food.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$ResponseFoodToJson(ResponseFood instance) =>
    <String, dynamic>{'meals': instance.detailFood};
