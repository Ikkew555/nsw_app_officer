// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_officer/component/noticifation_menu_1.dart';
import 'package:nsw_officer/component/noticifation_menu_2.dart';
import 'package:nsw_officer/config.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              "การแจ้งเตือน",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(
              color: Config.instance.color,
            ),
          )
        ],
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                    NotificationCard(),
                    NotificationCard2(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
