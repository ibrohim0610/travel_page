import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/utils/constants.dart';

class TravelItemBeen extends StatelessWidget {
  const TravelItemBeen({
    super.key,
    required this.kun,
    required this.joy,
  });

  final String kun, joy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 108,
          height: 23,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: AppColors.TextGreen,
              ),
              borderRadius: BorderRadius.circular(11)),
        ),
        Positioned(
          top: 0,
          left: 5,
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: AppColors.TextGreen,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset("asset/icons/calendar.svg"),
                ),
              ),
              Column(
                children: [
                  Text(
                    kun,
                    style: TextStyle(color: AppColors.TextGreen, fontSize: 12),
                  ),
                  Text(
                    "Kun",
                    style: TextStyle(color: AppColors.TextGreen, fontSize: 6),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(joy,
                    style: TextStyle(color: AppColors.TextGreen, fontSize: 12)),
              ),
            ],
          ),
        )
      ],
    );
  }
}