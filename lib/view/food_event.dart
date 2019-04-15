import 'package:equatable/equatable.dart';

abstract class FoodEvent extends Equatable {
  FoodEvent([List props = const []]) : super(props);
}

class FetchDetail extends FoodEvent {
  final String id;

  FetchDetail(this.id)
      : assert(id != null),
        super([id]);
}

class FetchSeaFood extends FoodEvent {

  FetchSeaFood();
}
class FetchDesertFood extends FoodEvent {

  FetchDesertFood();
}
