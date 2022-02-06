//T_Cart looks like

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/cart.dart';
import 'package:flutter_auth/constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    this.cart,
  }) : super(key: key);

  final T_Cart cart;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cart.teacher.cost + "\nلكل ساعة",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    cart.teacher.name,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    maxLines: 2,
                  ),
                  SizedBox(
                    width: 100,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Image.asset(cart.teacher.images[0]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 20,
          thickness: 2,
          color: kColor4,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
