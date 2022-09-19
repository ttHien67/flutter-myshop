import '../../models/cart_item.dart';

class CartManager {
  final Map<String, CartItem> _item = {
    'p1': CartItem(
      id: 'c1',
      title: 'Red Shirt',
      price: 29.99,
      quanlity: 2,
    ),
  };

  int get productCount {
    return _item.length;
  }

  List<CartItem> get products {
    return _item.values.toList();
  }

  Iterable<MapEntry<String, CartItem>> get productEntries {
    return {..._item}.entries;
  }

  double get totalAmount {
    var total = 0.0;
    _item.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quanlity;
     });
     return total;
  }
}
