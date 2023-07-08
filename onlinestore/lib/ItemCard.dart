import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  // final ProductCard
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 129, 168),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset("images/Black T-Shirt.png"),
        ),
        Text("Black T-shirt")
      ],
    );
  }
}
