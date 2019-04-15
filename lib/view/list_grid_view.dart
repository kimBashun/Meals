import 'package:flutter/material.dart';
import 'package:the_meal/model/food.dart';
import 'package:the_meal/view/item_food.dart';

class ListGridView extends StatelessWidget {
  final List<Food>listFood;
  ListGridView(this.listFood);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio:itemWidth / itemHeight,
      children: listFood
          .map(
            (item) => ItemFood(item),
      )
          .toList(),
    );

  }
}
