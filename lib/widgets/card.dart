import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String logoCard;
  final String logo;
  final Color colorCard;
  final String backgroundImage;
  final String numberCard;

  const CardWidget({
    super.key,
    required this.logo,
    required this.logoCard,
    required this.colorCard,
    required this.backgroundImage,
    required this.numberCard
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, opacity: 0.7, image: NetworkImage(backgroundImage), ),
        color: colorCard,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                logo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Image.network(logoCard, height: 30),
            ],
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Debit Card", style: TextStyle(color: Colors.white)),
                  Text(
                    numberCard,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},

                child: Row(
                  children: [
                    Icon(Icons.visibility_off_outlined, color: Colors.black,),
                    SizedBox(width: 10),
                    Text("Details", style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
