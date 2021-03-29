import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textDirection: TextDirection.rtl,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: 'جست و جو',
          hintTextDirection: TextDirection.rtl,
          fillColor: kSearchBarColor,
          filled: true,
          prefix: Buttons(icon: Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          suffix: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Buttons(icon: Icons.camera_alt),
                Buttons(icon: Icons.location_on_sharp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Buttons({IconData icon}) {
  return IconButton(
    icon: Icon(icon),
    onPressed: () {},
    color: kSearchBarIconsColor,
    splashColor: kBackGroundColor,
  );
}
