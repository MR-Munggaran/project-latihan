import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  const CartButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  bool isBuy = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBuy ? Icons.done : Icons.add_shopping_cart,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isBuy = !isBuy;
        });
      },
    );
  }
}
