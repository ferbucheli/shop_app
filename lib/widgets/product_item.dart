import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
          ),
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
