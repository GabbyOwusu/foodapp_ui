import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselCard.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CardProvider extends BaseProvider {
  List<FoodCard> get items {
    return <FoodCard>[
      FoodCard(
        color: Color.fromRGBO(251, 84, 71, 1),
        title: 'McDonnald\'s',
        headingImage: 'images/macdonnalds.png',
        image: 'images/food.png',
        menu: [
          'images/burger1.png',
          'images/burger2.png',
          'images/burger3.png',
          'images/burger4.png',
          'images/burger5.png',
        ],
      ),
      FoodCard(
          color: Color.fromRGBO(0, 150, 127, 1),
          title: 'Starbucks',
          headingImage: 'images/starbucks.png',
          image: 'images/coffee2.png',
          menu: [
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
          ]),
      FoodCard(
        color: Color.fromRGBO(26, 186, 24, 1),
        title: 'Subway',
        headingImage: 'images/subway.png',
        image: 'images/subwayfood.png',
        menu: [
          'images/hotdog1.png',
          'images/hotdog1.png',
          'images/hotdog1.png',
          'images/hotdog1.png',
          'images/hotdog1.png',
        ],
      ),
      FoodCard(
          color: Color.fromRGBO(255, 87, 96, 1),
          title: 'KFC',
          headingImage: 'images/kfc.png',
          image: 'images/chickenbucket.png',
          menu: [
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
          ]),
      FoodCard(
        color: Colors.blue,
        title: 'Dominos',
        headingImage: 'images/domino.png',
        image: 'images/pizza.png',
        menu: [
          'images/burger1.png',
          'images/burger2.png',
          'images/burger3.png',
          'images/burger4.png',
          'images/burger5.png',
        ],
      ),
      FoodCard(
          color: Colors.black,
          title: 'Shake Shack',
          headingImage: 'images/shake.png',
          image: 'images/burger.png',
          menu: [
            'images/burger1.png',
            'images/burger2.png',
            'images/burger3.png',
            'images/burger4.png',
            'images/burger5.png',
          ]),
    ];
  }
}
