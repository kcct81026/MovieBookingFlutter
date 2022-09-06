import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class GreenTextButton extends StatelessWidget {

  final String text;

  GreenTextButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BG_GREEN_COLOR,
        borderRadius: BorderRadius.all( Radius.circular(MARGIN_SMALL)),
      ),
      height: BUTTON_HEIGHT,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: TEXT_REGULAR
          ),
        ),
      ),
    );
  }
}
