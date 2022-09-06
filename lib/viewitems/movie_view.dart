import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/widgets/cinema_item_textview.dart';
import 'package:movie_booking_app/widgets/title_with_imdb_rating_view.dart';

class MovieView extends StatelessWidget {

  //final Function onTapMovie;

  //MovieView(this.onTapMovie);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: <Color>[
            item_gradient_bottom_color,
            item_gradient_bottom_color,
          ],
        ),
        borderRadius:BorderRadius.circular(MARGIN_MEDIUM),
      ),
      width: ( MediaQuery.of(context).size.width / 2 ),
      child: Column(
        children: [
          MovieItemImageView(),
          MovieBottomView(),

        ],
      ),
    );
  }
}

class MovieBottomView extends StatelessWidget {
  const MovieBottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MARGIN_MEDIUM,
              left: MARGIN_MEDIUM,
            ),
            child: TitleWithImdbRatingView(true),
          ),

          SizedBox(
            height: MARGIN_MEDIUM,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM),
            child:  MovieItemCinemaView(),
          ),
        ],
      ),
    );
  }
}


class MovieItemCinemaView extends StatelessWidget {
  const MovieItemCinemaView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "U/A",
          style: TextStyle(
            color: Colors.white,
            fontSize: TEXT_SMALL_XS,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: MARGIN_SMALL,),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        SizedBox(width: MARGIN_SMALL,),
        CinemaItemsTextView(true),
      ],
    );
  }
}



class MovieItemImageView extends StatelessWidget {
  const MovieItemImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(MARGIN_MEDIUM),
        topRight: Radius.circular(MARGIN_MEDIUM),
      ),
      child:  Image.network(
        "https://m.media-amazon.com/images/I/81X2GYnXtZL._AC_SX522_.jpg",
        width: ( MediaQuery.of(context).size.width / 2 ),
        height: MOVIE_IMAGE_HEIGHT,
        fit: BoxFit.cover,
      ),
    );
  }
}
