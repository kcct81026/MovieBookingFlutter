import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';

class DetailsGradientView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            BG_GRAY_COLOR,
          ],
        ),
      ),
    );
  }
}