import 'package:dribble_layout_1/constant/constant.dart';
import 'package:dribble_layout_1/widgets/select_card.dart';
import 'package:flutter/material.dart';

class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add money")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select card",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SelectCard(
                    backgroundImage: Constant.backgroundWiseCard,
                    logoCard: Constant.logoMastercard,
                    numberCard: Constant.numberWiseCard,
                  ),
                  SizedBox(width: 20),
                  SelectCard(
                    backgroundImage: Constant.backgroundRevolutCard,
                    logoCard: Constant.logoMastercard,
                    numberCard: Constant.numberRevolutCard,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Add money to Neobank",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text("Move your direct deposit"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: Icon(Icons.monetization_on_outlined),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text("Transfer from other banks"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: Icon(Icons.sync_alt_outlined),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text("Apple Pay"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: Icon(Icons.apple_outlined),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text("Debit / Credit Card"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: Icon(Icons.payment_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
