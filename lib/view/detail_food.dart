import 'package:flutter/material.dart';
import 'package:the_meal/api/food_api_client.dart';
import 'package:the_meal/bloc/food_bloc.dart';
import 'package:the_meal/model/food.dart';
import 'package:the_meal/repository/food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal/view/food_event.dart';
import 'package:the_meal/view/food_state.dart';
import 'package:http/http.dart' as http;

class DetailFood extends StatefulWidget {
  final Food food;
  final FoodRepository foodRepository =
      FoodRepository(FoodApiClient(http.Client()));

  DetailFood(this.food);

  @override
  _DetailFoodState createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  FoodBloc detailFoodBloc;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: new AppBar(
          title: new Text(
            widget.food.strMeal,
            style: new TextStyle(fontSize: 20.0),
          ),
        ),
        body: BlocBuilder(
            bloc: detailFoodBloc,
            builder: (_, FoodState state) {
              if (state is FoodLoading) {
                return _loadingView;
              }
              if (state is FoodLoaded) {
                final food = state.responseFood;
                return ListView(
                  children: <Widget>[
                    imageFood(food.detailFood[0]),
                    isi(food.detailFood[0])
                  ],
                );
              }
              if (state is FoodEmpty) {
                showSnackBar(widget.food.strMeal);
              }
              if (state is FoodError) {
                _errorText(state.erorr);
              }
            }));
  }


  Widget imageFood(Food food) {
    return new Container(
        width: double.infinity,
        height: 250,
        child: new Hero(
            tag: food.strMeal,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/placeholder.png',
              image: food.strMealThumb,
              fit: BoxFit.cover,
            )));
  }

  Widget isi(Food food) {
    return new Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: new Column(
        children: buildList(food),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    detailFoodBloc = FoodBloc(widget.foodRepository);
    detailFoodBloc.dispatch(FetchDetail(widget.food.idMeal));

  }

  Widget get _loadingView {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }
  Widget _errorText(String error) {
    return new Center(
      child: new Text(error),
    );
  }
  List<Widget> buildList(Food food) {
    List<Widget> containerList = new List();
    containerList.add(new Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: new Text("Ingridient",
          style: new TextStyle(fontSize: 25), textAlign: TextAlign.left),
    ));
    for (int i = 1; i <= 20; i++) {
      if (food.ingridient(i.toString()).isNotEmpty) {
        containerList.add(new Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10),
          child: Text(food.ingridient(i.toString()),
              textAlign: TextAlign.left, style: new TextStyle(fontSize: 18)),
        ));
      }
    }

    containerList.add(new Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: new Text("Instruction",
          style: new TextStyle(fontSize: 25), textAlign: TextAlign.left),
    ));
    containerList.add(new Container(
      width: double.infinity,
      child: Text(food.strInstructions, style: new TextStyle(fontSize: 18)),
    ));

    return containerList;
  }

  void showSnackBar(String value) {
    final snackBar = SnackBar(
      content: Text(value),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
