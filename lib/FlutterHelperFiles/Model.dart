import 'package:cloud_firestore/cloud_firestore.dart';

class Demo {
  final String name;
  final bool status;
  final Timestamp timeStamp;
  final num amount;

  Demo({
    required this.amount,
    required this.name,
    required this.timeStamp,
    required this.status,
  });

  factory Demo.fromMap(Map<String, dynamic>? data) {
    return Demo(
      name: data!['name'] ?? '',
      amount: data['amount'] ?? 0,
      timeStamp: data['timeStamp'] ?? '',
      status: data['status'] ?? false,
    );
  }
}
