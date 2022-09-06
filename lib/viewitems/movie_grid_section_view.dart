import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

import 'movie_view.dart';

class MovieGridSectionView extends StatelessWidget {


  final List<String> sliderImages;
  MovieGridSectionView(this.sliderImages);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: MARGIN_MEDIUM_2,
        mainAxisSpacing: MARGIN_MEDIUM_2,
        mainAxisExtent: MOVIE_ITEM_VIEW_HEIGHT,
      ),
      itemCount: 10,
      itemBuilder: (_, index){
        return MovieView();
      },
    );
  }
}