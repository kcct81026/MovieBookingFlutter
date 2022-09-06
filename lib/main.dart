import 'package:flutter/material.dart';
import 'package:movie_booking_app/pages/bottom_navigation_view.dart';
import 'package:movie_booking_app/pages/comboset_page.dart';
import 'package:movie_booking_app/pages/home_page.dart';
import 'package:movie_booking_app/pages/ticket_history_page.dart';
import 'package:movie_booking_app/resources/strings.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: ComboSetPage(),
      //home: TicketHistoryPage(),
      home: BottomNavigationView(),
    );
  }
}

