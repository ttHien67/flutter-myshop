import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_grid_title.dart';
import 'products_manager.dart';
import '../../models/product.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorite;

  const ProductsGrid(this.showFavorite, {super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.select<ProductsManager, List<Product>>(
        (productsManager) => showFavorite
            ? productsManager.favoriteItems
            : productsManager.items);

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTitle(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
