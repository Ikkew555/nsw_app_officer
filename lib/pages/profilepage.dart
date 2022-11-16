// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_officer/component/btn_about_system.dart';
import 'package:nsw_officer/component/btn_change_pin.dart';
import 'package:nsw_officer/component/btn_logout.dart';
import 'package:nsw_officer/component/btn_open_biometric.dart';
import 'package:nsw_officer/component/btn_privacy_consent.dart';
import 'package:nsw_officer/config.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "โปรไฟล์",
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topRight,
              //   end: Alignment.bottomLeft,
              //   colors: [
              //     Color.fromRGBO(19, 71, 154, 1),
              //     Color.fromRGBO(7, 20, 124, 1)
              //   ],
              // ),
              color: Color.fromRGBO(0, 53, 102, 1),
            ),
            child: Column(
              children: [
                Container(
                  // color: Colors.green,
                  height: MediaQuery.of(context).size.height / 8,
                ),
                Image.asset(
                  "assets/officer_img.png",
                  width: MediaQuery.of(context).size.width / 3,
                ),
                SizedBox(
                  // color: Colors.green,
                  height: MediaQuery.of(context).size.height / 5 + 10,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "คุณ",
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "เจ้าหน้าที่ ทดสอบระบบ",
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                            fontSize: Config.instance.fontinfo,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ตำแหน่ง",
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "xxxxxxxxxxxxxxxxxx",
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                            fontSize: Config.instance.fontinfo,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        child: Divider(
                          thickness: 1,
                          indent: 120,
                          endIndent: 120,
                          color: Color.fromRGBO(179, 193, 206, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
              child: SizedBox(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChangPinButton(),
                    OpenBiometricButton(),
                    PrivacyConsentButton(),
                    AboutSystemButton(),
                    LogOutButton(),
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
          //   child: Divider(
          //     indent: 120,
          //     endIndent: 120,
          //     thickness: 1,
          //     color: Color.fromRGBO(102, 102, 102, 1),
          //   ),
          // ),
        ],
      ),
    );
  }
}
