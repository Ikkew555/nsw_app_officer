// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_officer/component/bottom_navigation_bar_calerdarpage.dart';
import 'package:nsw_officer/config.dart';
import 'package:nsw_officer/pages/notificationpage.dart';

class ViewNotificationButton extends StatefulWidget {
  const ViewNotificationButton({Key? key}) : super(key: key);

  @override
  State<ViewNotificationButton> createState() => _ViewNotificationButtonState();
}

class _ViewNotificationButtonState extends State<ViewNotificationButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size.fromHeight(50),
          onPrimary: Colors.black,
          primary: Config.instance.color,
          elevation: 5,
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotificationPage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "การแจ้งเตือนทั้งหมด",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
