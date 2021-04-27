import 'package:flutter/material.dart';
import 'package:medical_plants/Screens/NotificationPage/Widgets/NotifCard.dart';

class NotifTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            NotifCard(
              title: '۲ کاربر این گیاه را پسندیده اند',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'بسیار زیبا بود.',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'خواص گیاه فوق العاده بود',
            ),
            NotifCard(
              title: '۲ کاربر این گیاه را پسندیده اند',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'بسیار زیبا بود.',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'خواص گیاه فوق العاده بود',
            ),
            NotifCard(
              title: '۲ کاربر این گیاه را پسندیده اند',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'بسیار زیبا بود.',
            ),
            NotifCard(
              title: 'اظهار نظر احمدرضا: ',
              value: 'خواص گیاه فوق العاده بود',
            )
          ],
        ),
      ),
    );
  }
}
