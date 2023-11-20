import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String description;
  final String price;
  final String brand;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.brand,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
        elevation: 8,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title: ${widget.title}'),
              Text('description: ${widget.description}'),
              Text('price: ${widget.price}'),
              Text('brand: ${widget.brand}'),
            ],
          ),
        ),
      ),
    );
  }
}
