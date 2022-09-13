import 'package:flutter/material.dart';

import '../../models/product.dart';

class UserProductListTitle extends StatelessWidget {
  final Product product;

  const UserProductListTitle(this.product, {super.key});

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(children: <Widget>[
          buildEditButton(context),
          buildDeleteButton(context),
        ]),
      ),
    );
  }

  Widget buildEditButton(BuildContext context){
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        print('Delete a product');
      },
      color: Theme.of(context).errorColor,
    );
  }

  Widget buildDeleteButton(BuildContext context){
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        print('Go to edit product screen');
      },
      color: Theme.of(context).primaryColor,
    );
  }
}
