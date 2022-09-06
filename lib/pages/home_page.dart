import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/pages/movie_details_page.dart';
import 'package:movie_booking_app/pages/search_page.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/viewitems/banner_view.dart';
import 'package:movie_booking_app/viewitems/movie_grid_section_view.dart';
import 'package:movie_booking_app/viewitems/movie_view.dart';
import 'package:movie_booking_app/widgets/gradient_view.dart';
import 'package:movie_booking_app/widgets/custom_two_buttons_view.dart';

class HomePage extends StatelessWidget {
  List<String> sliderImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7zRA4Xux9ZLksS0csCVAsK2bzCTRK2YcSvHUGEpf7iDTY81ruZ4lgIMlZ8lNzN7rB3_o&usqp=CAU",
    "https://mir-s3-cdn-cf.behance.net/projects/404/a0476e110083423.Y3JvcCwxMjc4LDEwMDAsNjAsMA.png",
    "https://pbs.twimg.com/media/EhqTOayWoAU9Hv1.jpg:large",
    "https://www.thepixellab.net/wp-content/uploads/2019/05/Free-Cinema-4D-3D-Model-Coffee-Cup-Paper-V2.jpg",
  ];



  bool isComingSoonSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Transform(
          transform:  Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
          "Yangon",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            ),
          ),
        ),

        leading: Icon(
          Icons.navigation_rounded,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 0,
              left: 0,
              bottom: 0,
              right: MARGIN_MEDIUM_2),
            child: GestureDetector(
              onTap: (){
                _navigateToSearchScreen(context);
              },
              child: Icon(
                Icons.search,
                color: Colors.white,

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 0,
                left: 0,
                bottom: 0,
                right: MARGIN_MEDIUM_2),
            child:Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 0,
                left: 0,
                bottom: 0,
                right: MARGIN_MEDIUM_2),
            child:Icon(
              Icons.settings_overscan,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        color: PRIMARY_COLOR,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerSectionView(
                      () => _navigateToMovieDetailsScreen(context)
                  ,sliderImages),
              SizedBox(height: MARGIN_MEDIUM_3,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                child: TwoButtonSectionView(isComingSoonSelected),
              ),
              SizedBox(height: MARGIN_MEDIUM_3,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                child: MovieGridSectionView(sliderImages),
              ),
              SizedBox(height: MARGIN_MEDIUM_3,),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToMovieDetailsScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MovieDetailsPage())
    );
  }
  void _navigateToSearchScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SearchPage())
    );
  }
}


class TwoButtonSectionView extends StatefulWidget {
  bool isComingSoonSelected ;

  TwoButtonSectionView(this.isComingSoonSelected);

  @override
  _TwoButtonSectionViewState createState() => _TwoButtonSectionViewState();
}

class _TwoButtonSectionViewState extends State<TwoButtonSectionView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GradientView(),
        ),
        Container(
          margin: EdgeInsets.all(MARGIN_MEDIUM),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.isComingSoonSelected = true;
                    });
                  },
                  child: CustomTwoButtonsView(widget.isComingSoonSelected, NOW_SHOWING_TITLE),
                ),
              ),
              Expanded(

                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.isComingSoonSelected = false;
                    });
                  },
                  child: CustomTwoButtonsView(widget.isComingSoonSelected, COMING_SOON_TITLE),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}



class BannerSectionView extends StatefulWidget {
  final List<String> images;
  final Function onTapMovie;
  BannerSectionView(this.onTapMovie, this.images);


  @override
  _BannerSectionViewState createState() => _BannerSectionViewState();
}

class _BannerSectionViewState extends State<BannerSectionView> {
  double _position = 0;

  CarouselController controller = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(MARGIN_MEDIUM),
          color: PRIMARY_COLOR,
          child: CarouselSlider.builder(
            itemCount: widget.images.length,
            itemBuilder:  (BuildContext context, int itemIndex, int pageViewIndex) =>
                BannerView(widget.images[itemIndex], widget.onTapMovie),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 4,
              enlargeCenterPage: true,
              onPageChanged: (position,reason){
                setState(() {
                  _position = position.toDouble();
                });
              },
              //autoPlay: true,
              enableInfiniteScroll: false,
            ),
          ),

        ),
        SizedBox(height: MARGIN_MEDIUM_2,),
        DotsIndicator(
            dotsCount : widget.images.length,
            position : _position,
            decorator : DotsDecorator(
              color: BG_GRAY_COLOR,
              activeColor: BG_GREEN_COLOR,
            ),
        ),
      ],
    );;
  }
}


