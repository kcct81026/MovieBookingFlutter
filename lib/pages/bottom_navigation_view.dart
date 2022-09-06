import 'package:flutter/material.dart';
import 'package:movie_booking_app/pages/comboset_page.dart';
import 'package:movie_booking_app/pages/home_page.dart';
import 'package:movie_booking_app/pages/movie_details_page.dart';
import 'package:movie_booking_app/pages/ticket_history_page.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/strings.dart';

class BottomNavigationView extends StatefulWidget {
  //List of Screens that you want to put

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  final screens = [
    HomePage(),
    TicketHistoryPage(),
    ComboSetPage(),
    HomePage(),
  ];

  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: NAV_MOVIE_TITLE,
            backgroundColor: PRIMARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
            AssetImage("assets/images/cinema.png"),
             // color: Color(0xFF3A5A98),
            ),
            label: NAV_CINEMA_TITLE,
            backgroundColor: PRIMARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/ticket.png"),
              //color: Color(0xFF3A5A98),
            ),
            label: NAV_TICKET_TITLE,
            backgroundColor: PRIMARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/profile.png"),
             // color: Color(0xFF3A5A98),
            ),
            label: NAV_PROFILE_TITLE,
            backgroundColor: PRIMARY_COLOR,
          ),

        ],
        backgroundColor: PRIMARY_COLOR,
        currentIndex: _selectedIndex,
        selectedItemColor: BG_GREEN_COLOR,
        onTap: _onItemTapped,
      ),
    );
  }
}
