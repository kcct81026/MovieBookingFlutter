import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/viewitems/movie_grid_section_view.dart';
import 'package:movie_booking_app/widgets/filter_view.dart';

import 'movie_details_page.dart';

class SearchPage extends StatelessWidget {
  List<String> filterList = [
    "Genres",
    "Format",
    "Month",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Container(
          width: double.infinity,
          child:SearchTextFieldAppBar(),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: MARGIN_MEDIUM),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 0,
              bottom: 0,
              right: MARGIN_MEDIUM_2,
            ) ,
          child:
            Icon(
              Icons.filter_alt_rounded,
              color: BG_GREEN_COLOR,
            )
          )
        ],

      ),
      body: Container(
        color: PRIMARY_COLOR,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterSectionView(filterList: filterList),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                child: MovieGridSectionView(filterList),
              ),
              SizedBox(height: MARGIN_MEDIUM_2,),
            ],
          ),
        ),
      ),

    );
  }
}

class FilterSectionView extends StatelessWidget {
  const FilterSectionView({
    Key? key,
    required this.filterList,
  }) : super(key: key);

  final List<String> filterList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MARGIN_MEDIUM_2),
      color: PRIMARY_COLOR,
      child: Wrap(
        spacing: MARGIN_SMALL,
        children: filterList
            .map ((item) => FilterView(item),
        ).toList(),
      ),
    );
  }
}

class SearchTextFieldAppBar extends StatelessWidget {
  const SearchTextFieldAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: SEARCH_MOVIE_TITLE,
        hintStyle: TextStyle(
          color: button_gray_gradient_left_color,
          fontWeight: FontWeight.bold
        ),

        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),

    );
  }
}
