import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal/bloc/food_bloc.dart';
import 'package:the_meal/repository/food_repository.dart';
import 'package:the_meal/view/food_event.dart';
import 'package:the_meal/view/food_state.dart';
import 'package:the_meal/view/list_grid_view.dart';

class SeaFood extends StatefulWidget {
  final FoodRepository foodRepository;

  SeaFood(this.foodRepository);


  @override
  _SeaFoodState createState() => _SeaFoodState();
}

class _SeaFoodState extends State<SeaFood> {
  FoodBloc foodBloc;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: BlocBuilder(
          bloc: foodBloc,
          builder: (_, FoodState state) {
            if (state is FoodLoading) {
              return _loadingView;
            }
            if(state is FoodLoaded){
              final food= state.responseFood;
              return new Container(
                  margin: EdgeInsets.only(right: 7.0, left: 7.0, top: 5.0),
                  child: ListGridView(food.detailFood));
            }
            if(state is FoodEmpty){
              return _loadingView;

            }
            if(state is FoodError){
              _showSnackBar(state.erorr, context);

            }
          }),
    );
  }

  Widget get _loadingView {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  @override
  void initState() {
    super.initState();
    foodBloc = FoodBloc(widget.foodRepository);
    foodBloc.dispatch(FetchSeaFood());
  }

  @override
  void dispose() {
    foodBloc.dispose();
    super.dispose();
  }
  void _showSnackBar(String value, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(value)
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
