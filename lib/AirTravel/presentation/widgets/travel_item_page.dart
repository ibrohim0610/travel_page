import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/AirTravel/presentation/widgets/travel_content.dart';
import 'package:new_project/AirTravel/presentation/widgets/travel_item_been.dart';
import 'package:new_project/AirTravel/presentation/widgets/travel_landing_page.dart';
import 'package:new_project/AirTravel/presentation/widgets/travel_tarif_page.dart';
import 'package:new_project/utils/constants.dart';

class TravelItemPage extends StatelessWidget {
  const TravelItemPage({
    super.key,
    required this.qonish_vaqt,
    required this.image,
    required this.name,
    required this.duration,
    required this.tariflar,
    required this.uchish_vaqt,
    required this.travel_Content,
  });

  final String duration,
      image,
      name,
      travel_Content,
      tariflar,
      uchish_vaqt,
      qonish_vaqt;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFF4B4B4B).withValues(alpha: 0.5),)),
            width: 302,
            height: 529,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 286,
                  height: 169,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                top: 31,
                left: 28,
                child: Container(
                  width: 59,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColors.TextGreen,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    duration,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 70,
                child: TravelLandingPage(
                    qonish: "27 Oktyabr", uchish: "14 Oktyabr"),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.TextGreen),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      "asset/icons/heart.svg",
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 180,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                      Row(
                        children: [
                          TravelItemBeen(kun: "10", joy: "Madinada"),
                          SizedBox(
                            width: 10,
                          ),
                          TravelItemBeen(kun: "5", joy: "Makkada"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 10,
            child: Row(
              //spacing: 10,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sayohat tarkibi',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        TravelContent(tarkib: "Sug'urta"),
                        TravelContent(tarkib: "Chipta"),
                        TravelContent(tarkib: "Viza"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 315,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tariflar",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  spacing: 10,
                  children: [
                    TravelTariffPage(
                      discount_money: 1200,
                      money: 1300,
                      TarifName: "Ekanom",
                    ),
                    TravelTariffPage(
                      discount_money: 1400,
                      money: 1600,
                      TarifName: "Standart",
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Positioned(
                  child: Container(
                    width: 274,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.TextGreen,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Batafsil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
