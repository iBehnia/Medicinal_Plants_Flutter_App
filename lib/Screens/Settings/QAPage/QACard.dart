import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class QACard extends StatefulWidget {
  String question;
  String answer;
  QACard({this.question, this.answer});
  // todo: convert to stateLess
  @override
  _QACardState createState() => _QACardState();
}

class _QACardState extends State<QACard> {
  String _icon = 'Left';
  bool _isDetail = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(
            color: kBorderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(33))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 85,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    widget.question,
                    style: TextStyle(color: kBlackFontsColor, fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: IconButton(
                  splashColor: kBackGroundColor,
                  icon: SvgPicture.asset(
                    'Assets/Icons/SettingsPage/QAPage/$_icon.svg',
                    height: 25,
                    width: 25,
                  ),
                  onPressed: () {
                    _isDetail = !_isDetail;
                    _icon = _isDetail ? 'Bottom' : 'Left';
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          if (_isDetail)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.answer,
                style: TextStyle(fontSize: 15, color: kDetailsFontsColor),
              ),
            )
        ],
      ),
    );
  }
}
