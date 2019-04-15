import 'dart:convert';
import 'package:the_meal/model/response_food.dart';
import 'package:http/http.dart' as http;

class FoodApiClient{
  static const baseUrl='https://www.themealdb.com/api/json/v1/1/';
  final http.Client htppClient;
  FoodApiClient(this.htppClient) : assert(htppClient!=null);

  Future<ResponseFood> fetchDesertList() async {
    final response = await http
        .get("$baseUrl/filter.php?c=Desert");

    if (response.statusCode == 200) {

      return ResponseFood.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<ResponseFood> fetchSeafoodList() async {
    final response = await http
        .get("$baseUrl/filter.php?c=Seafood");

    if (response.statusCode == 200) {
      return ResponseFood.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<ResponseFood> fetchDetailFood(String id) async {
    final response = await http
        .get("$baseUrl/lookup.php?i=$id");
    
    if (response.statusCode == 200) {

      return ResponseFood.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}