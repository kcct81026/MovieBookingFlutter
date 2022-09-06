import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class FilterView extends StatelessWidget {

  final String text;

  FilterView(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MARGIN_SMALL),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Text (
            text,
            style: TextStyle(
                fontSize: TEXT_SMALL,
                color: Colors.black,
                fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(width: MARGIN_MEDIUM,),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_drop_down
            ),
          ),
        ],
      ),
      decoration: BoxDecoration (
          borderRadius: BorderRadius.all( Radius.circular(10.0)),
         /* boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              blurRadius: 1,
              offset: Offset(0, 1), // Shadow position
            ),
          ],*/
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(
          vertical: MARGIN_MEDIUM,
          horizontal: MARGIN_CARD_MEDIUM_2
      ),
    );
  }
}

