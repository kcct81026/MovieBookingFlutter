import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class GradientView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment.topLeftend: Alignment.centerRight,
          colors: [
            button_gray_gradient_left_color,
            button_gray_gradient_right_color,
            button_gray_gradient_left_color,
          ],
        ),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM)
      ),
    );
  }
}