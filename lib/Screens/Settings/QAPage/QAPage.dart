import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

import 'QACard.dart';

class QAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myTitle: 'پرسش و پاسخ',
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  QACard(
                    question: 'چه کسانی می توانند عضو دای مپ شوند',
                    answer:
                        'تمامی افراد علاقه مند به این حوزه با استفاده از ایمیل خود می توانند عضوی از این مجموعه باشند',
                  ),
                  QACard(
                    question:
                        'آیا دریاقت اطلاعات از دای مپ هزینه ای در بر دارد ؟',
                    answer:
                        'تمامی افراد علاقه مند به این حوزه با استفاده از ایمیل خود می توانند عضوی از این مجموعه باشند',
                  ),
                  QACard(
                    question:
                        'بری استفاده از دای مپ آیا لازم است متخصص در زمینه گیاهان دارویی باشیم؟',
                    answer:
                        'تمامی افراد علاقه مند به این حوزه با استفاده از ایمیل خود می توانند عضوی از این مجموعه باشند',
                  ),
                  QACard(
                    question:
                        'از کجا می توانیم اپلیکیشن دای مپ را دانلود کنیم؟',
                    answer:
                        'تمامی افراد علاقه مند به این حوزه با استفاده از ایمیل خود می توانند عضوی از این مجموعه باشند',
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
