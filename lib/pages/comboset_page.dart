import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/viewitems/comboset_view.dart';
import 'package:movie_booking_app/viewitems/movie_grid_section_view.dart';
import 'package:movie_booking_app/viewitems/movie_view.dart';
import 'package:movie_booking_app/widgets/filter_view.dart';

import 'movie_details_page.dart';

class ComboSetPage extends StatelessWidget {
  List<String> comboTabList = [
    "All",
    "Combo",
    "Snack",
    "Pop Corn",
    "Beverage"

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Container(
          width: double.infinity,
          child:Text(
            COMBO_APPBAR_TITLE,
            style: TextStyle(
              color: Colors.white
            ),
          ),
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
                Icons.search,
                color: Colors.white,
              )
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: MARGIN_MEDIUM_2,
                ) ,
                child:  Text(
                  SKIP_TITLE,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ),
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
              ComboSetTabSectionView(comboTabList: comboTabList),
              SizedBox(height: MARGIN_MEDIUM_2,),
              ComboSetGridSectionView(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3),
        decoration: BoxDecoration(
          color: BG_GREEN_COLOR,
          borderRadius: BorderRadius.all( Radius.circular(MARGIN_MEDIUM)),
        ),
        height: COMBOSET_FLOATING_BUTTON_HEIGHT,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/combo.png',
                color: Colors.black,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top: MARGIN_MEDIUM_2),
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                  ),
                  constraints: BoxConstraints(
                    minWidth: NOTIBADGE,
                    minHeight: NOTIBADGE,
                  ),
                  child: Text(
                    '11',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
              ),
              Spacer(),
              Text(
                "5000 KS",
                style: TextStyle(
                  fontSize: TEXT_REGULAR,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComboSetGridSectionView extends StatelessWidget {
  const ComboSetGridSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: MARGIN_MEDIUM_2,
          mainAxisSpacing: MARGIN_MEDIUM_2,
          mainAxisExtent: COMBOSET_HEIGHT,
        ),
        itemCount: 10,
        itemBuilder: (_, index){
          return ComboSetView();
        },
      ),
    );
  }
}

class ComboSetTabSectionView extends StatelessWidget {
  const ComboSetTabSectionView({
    Key? key,
    required this.comboTabList,
  }) : super(key: key);

  final List<String> comboTabList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
      ),
      child: DefaultTabController(
        length: comboTabList.length,
        child: TabBar(
          isScrollable: true,
          indicatorColor: BG_GREEN_COLOR,
          unselectedLabelColor: Colors.white,
          tabs: comboTabList
              .map((genre) => Tab(
            child: Text(genre),
          ),
          ).toList(),
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


