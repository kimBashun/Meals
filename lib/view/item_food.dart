import 'package:flutter/material.dart';
import 'package:the_meal/model/food.dart';
import 'package:the_meal/view/detail_food.dart';

class ItemFood extends StatelessWidget {
  final Food food;

  ItemFood(this.food);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: food.strMeal,
      child: new Material(
        child:InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailFood(food),
              ),
            );          },
          child: Card(
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Expanded(
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/placeholder.png',
                      image: food.strMealThumb,
                      fit: BoxFit.cover,
                    )),
                new Container(
                    padding: EdgeInsets.all(13.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Container(
                              child: new Expanded(
                                child: new Center(
                                  child: new Text(
                                    food.strMeal,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: new TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      )
    ) ;
  }

}
