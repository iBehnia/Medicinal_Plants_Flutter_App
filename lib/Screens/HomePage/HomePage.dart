import 'package:flutter/material.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/SearchBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
              SearchBar(),
            ],
          )
        ],
      ),
    ));
  }
}
