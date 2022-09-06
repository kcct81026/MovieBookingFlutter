import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/cinema_item_textview.dart';
import 'package:movie_booking_app/widgets/detail_gradient_view.dart';
import 'package:movie_booking_app/widgets/gradient_view.dart';
import 'package:movie_booking_app/widgets/noti_gradient_view.dart';
import 'package:movie_booking_app/widgets/ticket_button.dart';
import 'package:movie_booking_app/widgets/title_with_imdb_rating_view.dart';
import 'package:movie_booking_app/widgets/two_textview_bg_shadow.dart';

class MovieDetailsPage extends StatelessWidget {

  final List<String> allChips = [
    "Action",
    "Adventure",
    "Comedy",
    "Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: PRIMARY_COLOR,
        child: CustomScrollView(
          slivers: [

            MovieDetailsSliverAppBarView(
                  () => Navigator.pop(context),
              allChips
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [

                  RatingReleaseTimeSectionView(),
                  NotificationSectionView(),
                  SizedBox(height: MARGIN_MEDIUM_3,),
                  StorylineSectionView(),
                  SizedBox(height: MARGIN_MEDIUM_3,),
                  CastSectionView(),
                  SizedBox(height: CAST_HEIGHT_RADIUS,),

                ],
              ),
            ),
          ],
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        alignment: Alignment.center,
        width: FLOATING_BUTTON_WIDTH,
        height: FLOATING_BUTTON_HEIGHT,
        child: CurveCustomButton(BOOKING_TITLE, FLOATING_BUTTON_WIDTH,FLOATING_BUTTON_HEIGHT ),
      ),

    );
  }
}

class NotificationSectionView extends StatelessWidget {
  const NotificationSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Stack(
        children: [
          Positioned.fill(child: NotiGradientView(),),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(MARGIN_MEDIUM_2),
                height: NOTIFICATION_HEIGHT,
                width: MediaQuery.of(context).size.width * (3/5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Releasing in 5 days",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: TEXT_REGULAR_3X,
                      ),
                    ),
                    SizedBox(height: MARGIN_MEDIUM_3,),
                    Expanded(
                      child: Text(
                        REMINDER_NOTI_TEXT,
                        style: TextStyle(
                          color: NOTI_REMINDER_TEXT_COLOR,
                          fontWeight: FontWeight.w400,
                          fontSize: TEXT_REGULAR_2X,
                        ),
                      ),
                    ),
                    SizedBox(height: MARGIN_MEDIUM_3,),
                    Container(
                      alignment: Alignment.center,
                      width: NOTI_BUTTON_WIDTH,
                      height: NOTI_BUTTON_HEIGT,

                      decoration: BoxDecoration(
                        color: BG_GREEN_COLOR,
                        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications_active,
                            color: Colors.black,
                            size: MARGIN_XLLARGE,
                          ),
                          SizedBox(width: MARGIN_MEDIUM,),
                          Text(
                            SET_NOTIFICATION_TITLE,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: TEXT_REGULAR_2X,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),
              Image.asset('assets/images/noti.png')
            ],
          )
        ],
      ),
    );
  }
}

class CastSectionView extends StatelessWidget {
  const CastSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
            child: Text(
              CAST_TITLE,
              style: TextStyle(
                color: Colors.white,
                fontSize: TEXT_REGULAR_2X,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2,),
          Container(
            height: CAST_HEIGHT + MARGIN_MEDIUM_3,
           // width: CAST_HEIGHT,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
              children: [
                CastView(),
                CastView(),
                CastView(),
                CastView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CastView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: CAST_HEIGHT_RADIUS,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: CAST_HEIGHT_RADIUS,
              backgroundImage: NetworkImage(
                "https://www.emmys.com/sites/default/files/styles/bio_pics_detail/public/bios/steve-carell-ap-450x600.jpg?itok=8liwA7FF",
              ),
            ),
          ),
          SizedBox(height: MARGIN_SMALL,),
          Text(
            "Steve Carell",
            style: TextStyle(
                color: Colors.white,
                fontSize: TEXT_SMALL,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}


class StorylineSectionView extends StatelessWidget {
  const StorylineSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            STORY_LINE_TITLE,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM,),
          Text(
            "In the 1970s, young Gru tries to join a group of supervillains called the Vicious 6 after they oust their leader -- the legendary fighter Wild Knuckles. When the interview turns disastrous, Gru and his Minions go on the run with the Vicious 6 hot on their tails. Luckily, he finds an unlikely source for guidance -- Wild Knuckles himself -- and soon discovers that even bad guys need a little help from their friends.",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR,
            ),
          )
        ],
      ),
    );
  }
}

class RatingReleaseTimeSectionView extends StatelessWidget {
  const RatingReleaseTimeSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MARGIN_MEDIUM_2),
      //height: MOVIE_DETAILS_APP_BAR_IMAGE_HEIGHT,
      child: Row(
        children: [
          TwoTextViewBgShadow(RATING_TITLE,"U/A"),
          SizedBox(width: MARGIN_MEDIUM_2,),
          TwoTextViewBgShadow(RELEASE_DATE_TITLE,"Aug 8th, 2022"),
          SizedBox(width: MARGIN_MEDIUM_2,),
          TwoTextViewBgShadow(DURATION_TITLE,"2hr 15min")
        ],
      ),

    );
  }
}

class MovieDetailsSliverAppBarView extends StatelessWidget {

  final Function onTapBack;

  final List<String> chipData ;



  MovieDetailsSliverAppBarView(this.onTapBack(), this.chipData);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: PRIMARY_COLOR,
      expandedHeight: MOVIE_DETAILS_SCREEN_SLIVER_APP_BAR_HEIGHT,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Container(
                    height: MOVIE_DETAILS_APP_BAR_IMAGE_HEIGHT,
                    width: MediaQuery.of(context).size.width,
                    child: MovieDetailsAppBarTopImageView(),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: MovieDetailTitleInfoView(chipData),
                  ),
                ],
              ),
            ),

            /*Positioned.fill(
              child: DetailsGradientView(),
            ),*/
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MARGIN_XXLLARGE,
                  left: MARGIN_MEDIUM_2,
                ),
                child: BackButtonView(
                        (){
                      this.onTapBack();
                    }
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MARGIN_XXLLARGE ,
                  right: MARGIN_MEDIUM_2,
                ),
                child: ShareButtonView(),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: MovieDetailsAppBarInfoView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailTitleInfoView extends StatelessWidget {
  final List<String> chipData ;

  MovieDetailTitleInfoView(this.chipData);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height:MOVIE_DETAILS_SCREEN_SLIVER_APP_BAR_HEIGHT - 200,
      color: PRIMARY_COLOR,
      width: MediaQuery.of(context).size.width * (3/5),
      padding: EdgeInsets.all(MARGIN_MEDIUM_2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithImdbRatingView(false),
          SizedBox(height: MARGIN_SMALL,),
          CinemaItemsTextView(false),
          SizedBox(height: MARGIN_MEDIUM,),
          GenreListView(chipData: chipData),

        ],
      ),
    );
  }
}

class GenreListView extends StatelessWidget {
  const GenreListView({
    Key? key,
    required this.chipData,
  }) : super(key: key);

  final List<String> chipData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: MARGIN_SMALL,
        children: chipData
          .map ((chip) => GenerView(chip),
          ).toList(),
      ),
    );
  }
}

class GenerView extends StatelessWidget {

  final String text;

  GenerView(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MARGIN_SMALL),
      child: Text (
          text,
          style: new TextStyle(
            fontSize: TEXT_SMALL,
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
      ),
      decoration: new BoxDecoration (
        borderRadius: BorderRadius.all( Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.yellow,
            blurRadius: 1,
            offset: Offset(0, 1), // Shadow position
          ),
        ],
        color: BG_GREEN_COLOR
      ),
      padding: EdgeInsets.symmetric(
        vertical: MARGIN_MEDIUM,
        horizontal: MARGIN_CARD_MEDIUM_2
      ),
    );
  }
}


class MovieDetailsAppBarInfoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (2/5),

      padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        height: 200,

        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(MARGIN_MEDIUM)),
          child:  Image.network(
            "https://m.media-amazon.com/images/I/81X2GYnXtZL._AC_SX522_.jpg",
            width: ( MediaQuery.of(context).size.width / 2 ),
            height: MOVIE_IMAGE_HEIGHT,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class MovieDetailsAppBarTopImageView extends StatelessWidget {
  const MovieDetailsAppBarTopImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: MovieDetailsAppBarImageView(),
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.play_circle_fill,
            size: MARGIN_XXLLARGE,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}


class ShareButtonView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.share_rounded,
      color: Colors.white,
      size: MARGIN_XLLARGE,
    );
  }
}

class BackButtonView extends StatelessWidget {
  final Function onTapBack;

  BackButtonView(this.onTapBack());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        this.onTapBack();
      },
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: Colors.white,
        size: MARGIN_XLLARGE,
      ),

    );
  }
}

class MovieDetailsAppBarImageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://image.cnbcfm.com/api/v1/image/106429653-1583525430557minonscropped.jpg?v=1583525525&w=740&h=416&ffmt=webp",
      fit: BoxFit.cover,
    );
  }
}


