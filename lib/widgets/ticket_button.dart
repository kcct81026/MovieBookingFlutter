import 'package:flutter/material.dart';
import 'package:movie_booking_app/component/clip_path.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class CurveCustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final bool shadow;

  CurveCustomButton(this.text, this.width, this.height , {this.shadow = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration (
        boxShadow: (shadow) ? [
          BoxShadow(
            color: BG_GREEN_COLOR.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 9,
            offset: Offset(0, 3),
          ),
        ] : null,
      ),
      child:  Stack(
        children: [
          CustomPaint(
            size: Size(width, height), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: TEXT_REGULAR,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
}
