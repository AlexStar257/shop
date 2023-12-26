import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '250',
      imagePath: 'assets/zoomfreak.png',
      description: 'The best shoes with the latest features',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '300',
      imagePath: 'assets/airjordan.png',
      description: 'Shoes designed especially for you',
    ),
    Shoe(
      name: 'KD Treys',
      price: '230',
      imagePath: 'assets/kdreys.png',
      description: 'Suited for scoring binges',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '180',
      imagePath: 'assets/kyrie6.png',
      description: 'Bouncy cushioning is paired with soft yet supportive foam',
    ),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];

  // Get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
