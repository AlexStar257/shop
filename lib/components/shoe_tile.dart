import 'package:flutter/material.dart';
import 'package:shop_cart/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constrains) {
      return Container(
        margin: const EdgeInsets.only(left: 25),
        width: 280,
        height: currentHeight,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SHOE PIC
            ClipRect(
              child: Image.asset(
                shoe.imagePath,
                height: currentHeight * 0.2,
                width: currentWidth,
                fit: BoxFit.cover,
              ),
            ),
            //DESC
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                shoe.description,
                style: TextStyle(color: Colors.grey[800]),
              ),
            ),
            //PRICE + DETAILS
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SHOE NAME
                      Text(
                        shoe.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(height: 5),

                      //PRICE
                      Text(
                        '\$${shoe.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),

                  //PLUS BUTTON
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //BUTTON TO ADD TO CART
          ],
        ),
      );
    });
  }
}
