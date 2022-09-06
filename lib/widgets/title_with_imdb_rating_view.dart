import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class TitleWithImdbRatingView extends StatelessWidget {

  final bool isSmallSize ;

  TitleWithImdbRatingView(this.isSmallSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "MINIONS",
          style: TextStyle(
            color: Colors.white,
            fontSize: isSmallSize ? TEXT_SMALL : TEXT_REGULAR_2X,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.movie_creation,
              color: Colors.amber,
              size: MARGIN_MEDIUM_2,
            ),
            SizedBox(width: MARGIN_SMALL,),
            Text(
              "9.0",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: isSmallSize ? TEXT_SMALL : TEXT_REGULAR_2X,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: MARGIN_SMALL,),

          ],
        ),
      ],
    );
  }
}
