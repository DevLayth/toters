import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Order {
  final int orderId;
  final String restName;
  final String restImg;
  final List<OrderItem> orderItems;

  Order({
    required this.orderId,
    required this.restName,
    required this.restImg,
    required this.orderItems,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    var orderItemsJson = json['order_items'] as List;
    List<OrderItem> orderItems =
        orderItemsJson.map((item) => OrderItem.fromJson(item)).toList();

    return Order(
      orderId: json['order_id'],
      restName: json['rest_name'],
      restImg: json['rest_img'],
      orderItems: orderItems,
    );
  }
}

class OrderItem {
  final String itemName;
  final int itemPrice;
  final int quantity;

  OrderItem({
    required this.itemName,
    required this.itemPrice,
    required this.quantity,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      itemName: json['item_name'],
      itemPrice: json['item_price'],
      quantity: json['quantity'],
    );
  }
}

Future<List<Order>> fetchOrders() async {
  final ordersJson = await rootBundle.loadString('assets/orders.json');

  List<dynamic> data = jsonDecode(ordersJson);
  List<Order> orders = data.map((order) => Order.fromJson(order)).toList();

  return orders;
}
