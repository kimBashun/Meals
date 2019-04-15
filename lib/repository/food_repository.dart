
import 'package:the_meal/api/food_api_client.dart';
import 'package:the_meal/model/response_food.dart';

class FoodRepository{
  final FoodApiClient foodApiClient;

  FoodRepository(this.foodApiClient): assert(foodApiClient!= null);

  Future<ResponseFood>getDetail(String id) async{

    return await foodApiClient.fetchDetailFood(id);
  }

  Future<ResponseFood>getSeafood() async{
    return await foodApiClient.fetchSeafoodList();
  }

  Future<ResponseFood>getDesert() async{
    return await foodApiClient.fetchDesertList();
  }
}