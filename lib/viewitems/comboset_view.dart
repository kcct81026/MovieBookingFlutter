import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/green_button.dart';

class ComboSetView extends StatelessWidget {
  const ComboSetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: <Color>[
            COMING_SOON_TEXT_COLOR,
            BG_GRAY_COLOR,
          ],
        ),
        borderRadius:BorderRadius.circular(MARGIN_MEDIUM),
      ),
      width: ( MediaQuery.of(context).size.width / 2 ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CombetImageView(),
          SizedBox(height: MARGIN_MEDIUM,),
          Text(
            "Burger combo1",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: TEXT_REGULAR
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM,),
          Text(
            "5000 Ks",
            style: TextStyle(
                color: BG_GREEN_COLOR,
                fontWeight: FontWeight.w500,
                fontSize: TEXT_REGULAR
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM,),
          GreenTextButton(ADD_TITLE),
          //MovieItemImageView(),
         // MovieBottomView(),

        ],
      ),
    );
  }
}

class CombetImageView extends StatelessWidget {
  const CombetImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: COMBOSET_IMAGE_HEIGHT,
        width: COMBOSET_IMAGE_HEIGHT,
        child: Image.asset('assets/images/burger.png'),
        //margin: EdgeInsets.all(MARGIN_MEDIUM_2),
        /*decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              "https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-2-Cheeseburger-Extra-Value-Meals:product-header-desktop?wid=830&hei=456&dpr=off",
            ),
          ),
        ),*/
      ),
    );
  }
}
