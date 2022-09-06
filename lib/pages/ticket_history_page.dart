import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/dotted_view.dart';
import 'package:movie_booking_app/widgets/gradient_view.dart';
import 'package:movie_booking_app/widgets/noti_gradient_view.dart';

class TicketHistoryPage extends StatelessWidget {
  
  List<String> ticketList = [
    "Ticket One",
    "Ticket Two"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: PRIMARY_COLOR,
        title: Text(
          TICKET_TITLE,
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
              
              TicketHistoryView(),
              SizedBox(height: MARGIN_MEDIUM_2,),
              TicketHistoryView(),
              SizedBox(height: MARGIN_MEDIUM_2,),

            ],
          ),
        ),
      ),

    );
  }
}

class TicketHistoryView extends StatelessWidget {
  const TicketHistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TICKT_HEIGHT,
      margin: EdgeInsets.only(
        left: MARGIN_MEDIUM,
        right: MARGIN_MEDIUM,
        top: MARGIN_MEDIUM,
      ),
      child: Stack(
          children: [
            Positioned.fill(child:
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                        button_gray_gradient_left_color,
                        item_gradient_bottom_color,
                      ],
                    ),
                    borderRadius:BorderRadius.circular(MARGIN_MEDIUM),
                  )
                ),
              ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.infinity,
                  child: DotWidget(
                    dashColor: BG_GRAY_COLOR,
                    totalWidth: MediaQuery.of(context).size.width - (MARGIN_MEDIUM + MARGIN_MEDIUM),
                    dashHeight: 2,
                    dashWidth: MARGIN_MEDIUM,
                  ),
                )
            ),
            TicketHistoryTopView(),
            Align(
              alignment: Alignment.bottomLeft,
              child:  TicketHistoryBottomView(),
            ),
          ]
      ),

    );
  }
}

class TicketHistoryBottomView extends StatelessWidget {
  const TicketHistoryBottomView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TICKT_HEIGHT/2 - (MARGIN_MEDIUM*3),
      //color: Colors.blue,
      margin: EdgeInsets.all(MARGIN_MEDIUM),
      child:  Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            margin: EdgeInsets.only(top: MARGIN_MEDIUM_2),
            child: Column(
              children: [
                Container(
                  width: MARGIN_XLLARGE,
                  height: MARGIN_XLLARGE,
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    color: Colors.black87,
                    boxShadow: [
                      BoxShadow(
                        color: BG_GREEN_COLOR,
                        blurRadius: 9,
                        offset: Offset(0, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: BG_GREEN_COLOR,
                    size: MARGIN_XLLARGE,
                  ),
                ),
                SizedBox(height: MARGIN_MEDIUM_2,),
                Text(
                  "Sat, 18 Jun 2022",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: TEXT_REGULAR
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            margin: EdgeInsets.only(top: MARGIN_MEDIUM_2),
            //height: TICKT_HEIGHT/2 - (MARGIN_MEDIUM*3),
            child: Column(
              children: [
                Container(
                  width: MARGIN_XLLARGE,
                  height: MARGIN_XLLARGE,
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    color: Colors.black87,
                    boxShadow: [
                      BoxShadow(
                        color: BG_GREEN_COLOR,
                        blurRadius: 9,
                        offset: Offset(0, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.access_time_rounded,
                    color: BG_GREEN_COLOR,
                    size: MARGIN_XLLARGE,
                  ),
                ),
                SizedBox(height: MARGIN_MEDIUM_2,),
                Text(
                  "3:30 PM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: TEXT_REGULAR
                  ),
                )
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width / 3,
            margin: EdgeInsets.only(top: MARGIN_MEDIUM_2),
            child: Column(
              children: [
                Container(
                  width: MARGIN_XLLARGE,
                  height: MARGIN_XLLARGE,
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    color: Colors.black87,
                    boxShadow: [
                      BoxShadow(
                        color: BG_GREEN_COLOR,
                        blurRadius: 9,
                        offset: Offset(0, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: BG_GREEN_COLOR,
                    size: MARGIN_XLLARGE,
                  ),
                ),

                SizedBox(height: MARGIN_MEDIUM_2,),
                Text(
                  "Q5H3+JPP, Corner \nof, Bogyoke Lann,\n Yangon ",
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: TEXT_REGULAR,
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

class TicketHistoryTopView extends StatelessWidget {
  const TicketHistoryTopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child:  Container(
          height: TICKT_HEIGHT/2 - MARGIN_MEDIUM,
          margin: EdgeInsets.all(MARGIN_MEDIUM),
          child: Container(
            margin: EdgeInsets.all(MARGIN_MEDIUM),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TicketHistoryImageView(),
                SizedBox(width: MARGIN_MEDIUM_2,),
                TicketHistoryMovieInfoView(),

              ],
            ),
          ),
        ),
    );
  }
}

class TicketHistoryMovieInfoView extends StatelessWidget {
  const TicketHistoryMovieInfoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MINIONS : Rise of Gru",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2,),
          Text(
            "Junction City Cineplex",
            style: TextStyle(
                color: BG_GREEN_COLOR,
                fontWeight: FontWeight.bold,
                fontSize: TEXT_REGULAR
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2,),
          Text(
            "MTicket",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: TEXT_REGULAR
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2,),
          Text(
            "GOLD G5-G6",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
        ],
      ),
    );
  }
}

class TicketHistoryImageView extends StatelessWidget {
  const TicketHistoryImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width  / 3.5 ,
      height: (MediaQuery.of(context).size.width  / 3)   ,
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(MARGIN_MEDIUM)),
          child:  Image.network(
            "https://m.media-amazon.com/images/I/81X2GYnXtZL._AC_SX522_.jpg",
            width: ( MediaQuery.of(context).size.width / 2 ),
            height: MOVIE_IMAGE_HEIGHT,
            fit: BoxFit.cover,
          ),
      ),
    );
  }
}

