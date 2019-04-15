import 'package:equatable/equatable.dart';
import 'package:the_meal/model/response_food.dart';
import 'package:meta/meta.dart';

abstract class FoodState extends Equatable {
  FoodState([List props = const[]]) : super(props);
}

class FoodEmpty extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final ResponseFood responseFood;

  FoodLoaded({@required this.responseFood})
      : assert(responseFood != null),
        super([responseFood]);
}

class FoodError extends FoodState {
  final String erorr;

  FoodError({@required this.erorr}) : assert(erorr != null),super([erorr]);
}
