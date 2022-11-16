// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nsw_officer/config.dart';
import 'package:nsw_officer/pages/calendarpage.dart';
import 'package:nsw_officer/pages/homepage.dart';
import 'package:nsw_officer/pages/notificationpage.dart';
import 'package:nsw_officer/pages/profilepage.dart';
import 'package:nsw_officer/pages/scanQRpage.dart';
import 'package:nsw_officer/pages/track_statuspage.dart';

class BottomNavBarCalendar extends StatefulWidget {
  const BottomNavBarCalendar({Key? key}) : super(key: key);

  @override
  State<BottomNavBarCalendar> createState() => _BottomNavBarCalendarState();
}

class _BottomNavBarCalendarState extends State<BottomNavBarCalendar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TrackStatusPage(),
    QRScanner(),
    CalendarPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = CalendarPage();
  int currentTab = 3;
  final List<Widget> screens = [
    HomePage(),
    TrackStatusPage(),
    CalendarPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = HomePage();
                          currentTab = 0;
                        },
                      );
                    },
                    minWidth: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 0
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "หน้าหลัก",
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 0
                                ? Config.instance.color
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = TrackStatusPage();
                          currentTab = 1;
                        },
                      );
                    },
                    minWidth: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.insert_drive_file_outlined,
                          color: currentTab == 1
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "ติดตามคำร้อง",
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 1
                                ? Config.instance.color
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = CalendarPage();
                          currentTab = 3;
                        },
                      );
                    },
                    minWidth: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: currentTab == 3
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "นัดหมาย",
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 3
                                ? Config.instance.color
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = ProfilePage();
                          currentTab = 4;
                        },
                      );
                    },
                    minWidth: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: currentTab == 4
                              ? Config.instance.color
                              : Colors.grey,
                        ),
                        Text(
                          "ตั้งค่า",
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 4
                                ? Config.instance.color
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Config.instance.color,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const QRScanner(),
            ),
          );
        },
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: true,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Color.fromRGBO(19, 71, 154, 1),
      //   unselectedItemColor: Colors.black38,
      //   selectedFontSize: 12,
      //   onTap: _onItemTapped,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'หน้าหลัก',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.insert_drive_file_outlined),
      //       label: 'ติดตามคำร้อง',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.qr_code_scanner),
      //       label: 'แสกน QR',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications_none_outlined),
      //       label: 'แจ้งเตือน',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings_outlined),
      //       label: 'ตั้งค่า',
      //     ),
      //   ],
      // ),
