import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';

class CustomTwoButtonsView extends StatelessWidget {

  final bool isSelected;
  final String text;
  CustomTwoButtonsView(
      this.isSelected,
      this.text
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: (MediaQuery.of(context).size.width / 2.1 )  ,
      decoration: BoxDecoration(
        color: text == NOW_SHOWING_TITLE ?
        isSelected ? BG_GREEN_COLOR : Colors.transparent :
        isSelected ? Colors.transparent : BG_GREEN_COLOR
        ,
        borderRadius: text == NOW_SHOWING_TITLE ?
        isSelected ? BorderRadius.circular(MARGIN_MEDIUM) : null :
        isSelected ? null : BorderRadius.circular(MARGIN_MEDIUM),
      ),

      alignment: Alignment.center,
      height: TWO_BUTTON_HEIGHT,
      child: Text(
        text,
        style: TextStyle(
            color: COMING_SOON_TEXT_COLOR,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
