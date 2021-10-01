import 'package:apupsp/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyForecast extends StatefulWidget {
  //const DailyForecast({ Key? key }) : super(key: key);

  @override
  _DailyForecastState createState() => _DailyForecastState();
}

class _DailyForecastState extends State<DailyForecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ramalan 5 Hari",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Color(0xFFFAFAFA),
                    fontSize: 16,
                    fontWeight: FontWeight.w500))),
        backgroundColor: Color(0xFF07689F),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 5, top: 20, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFF07689F),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreenPage()));
                      },
                      child: Text("28/9",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)))),
                )),
            Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 5, top: 20, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: Color(0xFF07689F)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreenPage()));
                      },
                      child: Text("29/9",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)))),
                )),
            Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 5, top: 20, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: Color(0xFF07689F)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreenPage()));
                      },
                      child: Text("29/9",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)))),
                )),
            Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 5, top: 20, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: Color(0xFF07689F)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreenPage()));
                      },
                      child: Text("29/9",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)))),
                )),
            Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 5, top: 20, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: Color(0xFF07689F)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreenPage()));
                      },
                      child: Text("29/9",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF07689F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)))),
                )),
          ])),
          Container(
            height: 420,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, top: 20, right: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF07689F),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 5,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pagi",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            Image.asset(
                              'images/weather/02d.png',
                              height: 80,
                              width: 80,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("23 °C",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600))),
                            Text("Cerah Berawan",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: 300,
                  height: 1,
                  color: Color(0xFFFAFAFA),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Siang",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            Image.asset(
                              'images/weather/02d.png',
                              height: 80,
                              width: 80,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("23 °C",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600))),
                            Text("Cerah Berawan",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: 300,
                  height: 1,
                  color: Color(0xFFFAFAFA),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sore",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            Image.asset(
                              'images/weather/02d.png',
                              height: 80,
                              width: 80,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("23 °C",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600))),
                            Text("Cerah Berawan",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFAFAFA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
