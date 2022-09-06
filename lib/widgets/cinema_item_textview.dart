import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class CinemaItemsTextView extends StatelessWidget {
  final bool isSmallSize ;

  CinemaItemsTextView(this.isSmallSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      "2D, 3D, 3D IMAX",
      style: TextStyle(
        color: Colors.white,
        fontSize: isSmallSize ? TEXT_SMALL : TEXT_REGULAR_2X,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
