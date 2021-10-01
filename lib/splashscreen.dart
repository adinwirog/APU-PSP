import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:apupsp/inputdata.dart';
//import 'package:apupsp/dailyforecast.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 91, top: 150, right: 91),
                  child: Image.asset("images/logo wheather 1.png",
                      width: 193, height: 239),
                ),
                Container(
                    margin: EdgeInsets.only(top: 55),
                    height: 35,
                    width: 109,
                    decoration: BoxDecoration(
                      color: Color(0xFF3391B7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 3,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InputData()));
                        },
                        child: Text("Mulai",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600))))),
                Container(
                  padding: EdgeInsets.only(top: 115),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('©Copyright',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500))),
                      Text('Kelompok F2 - All Rights Reserved',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500)))
                    ],
                  ),
                ),
              ]),
        ));
  }
}
