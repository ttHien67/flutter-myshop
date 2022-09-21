import 'package:flutter/material.dart';

import 'order_manager.dart';
import 'order_item_card.dart';

import '../shared/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersScreen({super.key});

  Widget build(BuildContext context) {
    print('building orders');
    final ordesrManager = OrdersManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordesrManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordesrManager.orders[i]),
      ),
    );
  }
}
