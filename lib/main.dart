import 'package:dribble_layout_1/constant/constant.dart';
import 'package:dribble_layout_1/pages/add_money_page.dart';
import 'package:dribble_layout_1/widgets/transaction.dart';
import 'package:flutter/material.dart';
import './widgets/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/add_money_page': (context) => AddMoneyPage()},
      title: "Dribble Layout 1",
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(icon: Icon(Icons.map_outlined), label: 'Map'),
            NavigationDestination(
              icon: Icon(Icons.sync_alt_outlined),
              label: 'Transfer',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning, Terry",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Welcome to Neobank",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: BoxBorder.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_active_outlined),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your balance",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$3,200.000",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_off_outlined),
                              ),
                            ],
                          ),
                          Builder(
                            builder: (context) {
                              return ElevatedButton(
                                onPressed: () => Navigator.pushNamed(
                                  context,
                                  '/add_money_page',
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 40),
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                ),
                                child: Text(
                                  "Add money",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your cards",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '+ New card',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CardWidget(
                          logo: 'Revolut',
                          logoCard: Constant.logoMastercard,
                          colorCard: Colors.deepPurple,
                          backgroundImage: Constant.backgroundRevolutCard,
                          numberCard: Constant.numberRevolutCard,
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          logoCard: Constant.logoMastercard,
                          logo: "Wise",
                          colorCard: Colors.white,
                          backgroundImage: Constant.backgroundWiseCard,
                          numberCard: Constant.numberWiseCard,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  /* TRANSACTIONS */
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),

                          Transaction(
                            name: 'Starbucks Coffee',
                            date: 'October 17, 09:00 PM',
                            price: '44.80',
                            savePrice: '1.65',
                          ),
                          Transaction(
                            name: 'Action Shop',
                            date: 'March 20, 6:00 PM',
                            price: '120.40',
                            savePrice: '20.43',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
