import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class NotiGradientView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment.topLeftend: Alignment.centerRight,
          colors: [
            gray_gradient_color_one,
            gray_gradient_color_two,
            gray_gradient_color_three,
          ],
        ),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM)
      ),
    );
  }
}