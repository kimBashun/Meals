
import 'package:the_meal/model/food.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'response_food.g.dart';


@JsonSerializable()
class ResponseFood extends Equatable{
  ResponseFood(this.detailFood);

  @JsonKey(name: 'meals')
  List<Food>detailFood;
  factory ResponseFood.fromJson(Map<String, dynamic> json) => _$ResponseFoodFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseFoodToJson(this);
}