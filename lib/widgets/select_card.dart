import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  final String backgroundImage;
  final String logoCard;
  final String numberCard;

  const SelectCard({
    super.key,
    required this.backgroundImage,
    required this.logoCard,
    required this.numberCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          opacity: 0.7,
          image: NetworkImage(backgroundImage),
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(value: "value"),
                Image.network(logoCard, height: 20),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Debit card",
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            Text(numberCard, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
