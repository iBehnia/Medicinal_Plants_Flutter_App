import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/PlantProfile/Widgets/TopBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

import 'Widgets/DetailsTiles.dart';

class PlantProfilePage extends StatelessWidget {
  int liked = 4;
  String date = '۱۴۰۰/۰۱/۱۰';
  String locate = 'تهران, پارک جنگلی سرخ حصار';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              Stack(
                children: [
                  Container(
                    height: Get.height * 0.35,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            'Assets/Images/img1.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 10,
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'Assets/Icons/Like.svg',
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Container(
                color: kProfileUpColor,
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SvgPicture.asset(
                          'Assets/Icons/PlantProfile/Calendar.svg'),
                    ),
                    Text(date),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SvgPicture.asset(
                          'Assets/Icons/PlantProfile/Location.svg'),
                    ),
                    Text(locate),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Text(
                  liked.toString() + ' نفر این پست را پسندیده اند',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: ListView(
                    children: [
                      DetailsTiles(
                        title: 'نام علمی',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'نام محلی گیاه',
                        value: 'ازگند',
                      ),
                      DetailsTiles(
                        title: 'استان-دهستان',
                        value: 'کردستان-بیجار',
                      ),
                      DetailsTiles(
                        title: 'تراکم',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'بخش مورد استفاده گیاه',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'شعاع پراکندگی',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'درصد پراکندگی',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'مرحله رشد گیاه',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'تیپ رشد گیاه',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'عادت رشدی گیاه',
                        value: 'آویشن',
                      ),
                      DetailsTiles(
                        title: 'فصل برداشت گیاه',
                        value: 'آویشن',
                      ),
                    ],
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
