import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';

import 'FolowingCard.dart';

class FolowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InputTxt(
                suffix: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              height: Get.height * 0.8,
              width: Get.width,
              child: ListView(
                children: [
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                  FolowingCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
