import  'package:flutter/material.dart';
import 'package:new_project/AirTravel/presentation/widgets/travel_item_page.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: TravelItemPage(
        image: "asset/images/offers/offers_1.jpg",
        name: "Umra Sayohati",
        duration: "14 kun",
        tariflar: "Ekanom",
        qonish_vaqt: "17Oktyabr",
        uchish_vaqt: "27Oktyabr",
        travel_Content: 'Tarkib',
      ),
    );
  }
}