
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/utils/constants.dart';

class TravelContent extends StatelessWidget {
  const TravelContent({super.key, required this.tarkib});

  final String tarkib;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 69,
          height: 19,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: AppColors.TextGreen)),
        ),
        Positioned(
          top: 2,
          left: 2,
          bottom: 2,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.TextGreen),
            child: SvgPicture.asset(
              "asset/icons/tick.svg",
              width: 5,
              height: 5,
            ),
          ),
        ),
        Positioned(
            top: 2,
            left: 19,
            child: Text(
              tarkib,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.TextGreen),
            ))
      ],
    );
  }
}