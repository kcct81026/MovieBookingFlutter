import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class TwoTextViewBgShadow extends StatelessWidget {

  final String title;
  final String text;

  TwoTextViewBgShadow(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TWO_TEXT_BG_SHADOW_HEIGHT ,
      width: MediaQuery.of(context).size.width / 3.6,
      margin: EdgeInsets.symmetric(vertical: MARGIN_SMALL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text (
            title,
            style: new TextStyle(
                fontSize: TEXT_REGULAR,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          Text (
            text,
            style: new TextStyle(
                fontSize: TEXT_REGULAR,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration (
          borderRadius: BorderRadius.all( Radius.circular(10.0)),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          color: PRIMARY_COLOR,
      ),

    );;
  }
}
