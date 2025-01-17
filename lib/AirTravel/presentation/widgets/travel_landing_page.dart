import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/utils/constants.dart';

class TravelLandingPage extends StatelessWidget {
  TravelLandingPage({super.key, required this.qonish, required this.uchish});

  String uchish, qonish;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("asset/icons/flight.svg"),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 61,
          height: 21,
          decoration: BoxDecoration(
              color: AppColors.TextGreen,
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              uchish,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SvgPicture.asset("asset/icons/landing.svg"),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 61,
          height: 21,
          decoration: BoxDecoration(
              color: AppColors.TextGreen,
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              qonish,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        )
      ],
    );
  }
}