import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class BannerView extends StatelessWidget {
  final String url ;
  BannerView(this.url, this.onTapMovie);
  final Function onTapMovie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            onTapMovie();
          },
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url)
                ),
                borderRadius: BorderRadius.all(Radius.circular(MARGIN_MEDIUM)),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
