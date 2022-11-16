// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_officer/component/bottom_navigation_bar_calerdarpage.dart';
import 'package:nsw_officer/component/bottom_navigation_bar_profilepage.dart';
import 'package:nsw_officer/component/bottom_navigation_bar_trackstatus.dart';
import 'package:nsw_officer/component/btn_notification.dart';
import 'package:nsw_officer/component/menu_meeting_menu.dart';
import 'package:nsw_officer/component/menu_report_menu.dart';
import 'package:nsw_officer/config.dart';
import 'package:nsw_officer/pages/calendarpage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 44.0, 10.0, 0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.black,
                            splashFactory: NoSplash.splashFactory,
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavBarProfile(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/officer_img.png",
                                width: 50,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'สวัสดี',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' คุณ',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' \nเจ้าหน้าที่ ทดสอบระบบ',
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        NotificationButton(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 10.0),
                    child: Divider(
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        Text(
                          "การทำงานประจำเดือนมกราคม",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/graph.png",
                            width: MediaQuery.of(context).size.width / 2 - 50,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "คำร้องทั้งหมด",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "12",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Config.instance.color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ตำร้องที่ยังไม่ดำเนินการ",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "4",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Config.instance.color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "คำร้องที่รอผู้ยื่นจัดการ",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Config.instance.color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "คำร้องที่เสร็จสิ้นแล้ว",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "2",
                                      style: GoogleFonts.prompt(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Config.instance.color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '3',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu1.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "คำร้องที่ยังไม่ดำเนินการ",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '5',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu2.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "รอเจ้าหน้าตอบกลับ",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Badge(
                            position: BadgePosition.topEnd(),
                            badgeColor: Color.fromRGBO(255, 195, 0, 1),
                            badgeContent: Text(
                              '4',
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: PhysicalShape(
                              shadowColor: Colors.black,
                              elevation: 2,
                              clipper:
                                  ShapeBorderClipper(shape: CircleBorder()),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/circle_menu4.png",
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "นัดหมายใกล้ถึงใน 7 วัน",
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "คำร้องใหม่วันนี้ (2)",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: Config.instance.fontinfo,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(30),
                              shape: StadiumBorder(),
                              onPrimary: Colors.white,
                              primary: Config.instance.color,
                            ),
                            child: Text(
                              "คำร้องใหม่ทั้งหมด",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavBarTrackStatus(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReportCard(),
                  SizedBox(
                    height: 10,
                  ),
                  ReportCard(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "นัดหมายที่ใกล้จะถึง (2)",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: Config.instance.fontinfo,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(30),
                              shape: StadiumBorder(),
                              onPrimary: Colors.white,
                              primary: Config.instance.color,
                            ),
                            child: Text(
                              "การนัดหมายทั้งหมด",
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavBarCalendar(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MeetingCard(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
