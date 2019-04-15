import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:the_meal/model/response_food.dart';
import 'package:the_meal/repository/food_repository.dart';
import 'package:the_meal/view/food_event.dart';
import 'package:the_meal/view/food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FoodRepository foodRepository;

  FoodBloc(this.foodRepository) : assert(foodRepository != null);


  @override
  FoodState get initialState => FoodEmpty();

  @override
  Stream<FoodState> mapEventToState(FoodEvent event) async* {
    if (event is FetchDetail) {
      yield FoodLoading();

      try {
        final ResponseFood responseFood = await foodRepository
            .getDetail(event.id);
        yield FoodLoaded(responseFood: responseFood);

      } catch (_) {
        yield FoodError( erorr: _);
      }
    }

    if(event is FetchSeaFood){
      yield FoodLoading();
      try {
        final ResponseFood responseFood = await foodRepository
            .getSeafood();
        yield FoodLoaded(responseFood: responseFood);

      } catch (_) {
        yield FoodError( erorr: _);
      }
    }

    if(event is FetchDesertFood){
      yield FoodLoading();
      try {
        final ResponseFood responseFood = await foodRepository
            .getDesert();
        yield FoodLoaded(responseFood: responseFood);
      } catch (_) {
        yield FoodError( erorr: _);
      }
    }
  }

}
