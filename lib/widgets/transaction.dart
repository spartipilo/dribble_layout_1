import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String name;
  final String date;
  final String price;
  final String savePrice;

  const Transaction({
    super.key,
    required this.name,
    required this.date,
    required this.price,
    required this.savePrice,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(date),
      trailing: Column(
        crossAxisAlignment: .end,
        children: [
          Text('-\$$price', style: TextStyle(fontSize: 18, color: Colors.black)),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: .circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                '+\$$savePrice',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
