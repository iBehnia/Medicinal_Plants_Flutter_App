import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.share,
            size: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'Assets/Icons/PlantProfile/Bookmark.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: SvgPicture.asset(
              'Assets/Icons/PlantProfile/Chat.svg',
              height: 20,
              width: 20,
            ),
            onPressed: () {},
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            'Assets/Icons/PlantProfile/Download.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'Assets/Icons/PlantProfile/Edit.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () {},
        ),
        Spacer(),
        Text('سارا منتظری'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              CircleAvatar(backgroundImage: AssetImage('Assets/Images/p.png')),
        ),
      ],
    );
  }
}
