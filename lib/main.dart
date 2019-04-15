import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:the_meal/api/food_api_client.dart';
import 'package:the_meal/repository/food_repository.dart';
import 'package:the_meal/view/seafood_view.dart';
import 'package:the_meal/view/desert_view.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The Meals',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  static FoodRepository foodRepository =
  FoodRepository(FoodApiClient(http.Client()));
  final List<Widget> _children = [SeaFood(foodRepository), DesertView(foodRepository)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("The Meals"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny), title: new Text("Seafood")),
            new BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: new Text("Desert")),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
