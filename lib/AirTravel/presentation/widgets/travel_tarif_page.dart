import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/utils/constants.dart';

class TravelTariffPage extends StatelessWidget {
  const TravelTariffPage({
    super.key,
    required this.discount_money,
    required this.money,
    required this.TarifName,
  });

  final int money, discount_money;
  final String TarifName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          //top: 10,
          child: Container(
            width: 127,
            height: 83,
            decoration: BoxDecoration(
              color: AppColors.TextGreen,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$discount_money",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$money",
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      )
                    ],
                  ),
                  Text(
                    "Afzalliklari",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 107,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF069C57),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: AppColors.TextGreen,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("asset/icons/tick.svg"),
                              SizedBox(width: 2,),
                              Text("Transport ximati",
                              style: TextStyle(color:
                                AppColors.TextGreen,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -20,
                        child: Container(
                          width: 62,
                          height: 17,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.TextGreen,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                      color: AppColors.TextGreen,
                                      borderRadius: BorderRadius.circular(6)),
                                  child:
                                  SvgPicture.asset("asset/icons/tick.svg")
                              ),
                              Text(
                                "Nonushta",
                                style: TextStyle(
                                    color: AppColors.TextGreen, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 30,
          right: 30,
          child: Container(
            width: 65,
            height: 19,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.TextGreen),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                TarifName,
                style: TextStyle(color: AppColors.TextGreen),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          left: 55,
          right: 55,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Color(0xFF069C57),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset("asset/icons/down-arrow.svg"),
          ),
        ),
      ],
    );
  }
}
