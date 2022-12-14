import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_officer/config.dart';
import 'package:nsw_officer/pages/loginpage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors: [
          //     Color.fromRGBO(19, 71, 154, 1),
          //     Color.fromRGBO(0, 53, 102, 1)
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
              "assets/logo_nsw.png",
              width: MediaQuery.of(context).size.width / 2,
            ),
            Container(
              // color: Colors.green,
              height: 40,
            ),
            Text(
              "สำหรับเจ้าหน้าที่",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: Config.instance.fontinfo,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              // color: Colors.green,
              height: MediaQuery.of(context).size.height / 3 - 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.white,
                    onPrimary: const Color.fromRGBO(19, 71, 154, 1)),
                child: Text(
                  "เข้าสู่ระบบ",
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      fontSize: Config.instance.fontinfo,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "ลงทะเบียน",
                style: GoogleFonts.prompt(
                  textStyle: TextStyle(
                    fontSize: Config.instance.fontinfo,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
