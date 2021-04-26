import 'package:flutter/material.dart';
import 'package:medical_plants/Screens/NotificationPage/Widgets/JoinReqCard.dart';

class JoinRequestTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            JoinReqCard(),
          ],
        ),
      ),
    );
  }
}
