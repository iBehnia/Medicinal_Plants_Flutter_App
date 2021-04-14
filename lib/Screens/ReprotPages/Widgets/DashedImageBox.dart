import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class DashedImageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 15),
      child: DottedBorder(
        dashPattern: [8, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        color: kBorderColor,
        child: Container(
          width: Get.width,
          height: Get.height / 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('Assets/Icons/ReportPage/Camera.svg'),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'تصویر گیاه را بارگزاری نمایید',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'حداکثر حجم ۱۰ مگابایت می باشد',
                  style: TextStyle(
                    fontSize: 10,
                    color: kUnSelectedColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
