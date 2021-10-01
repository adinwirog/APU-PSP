import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CobaDulu extends StatefulWidget {
  //const CobaDulu({ Key? key }) : super(key: key);

  @override
  _CobaDuluState createState() => _CobaDuluState();
}

class _CobaDuluState extends State<CobaDulu> {
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
                padding: EdgeInsets.only(left: 91, top: 167, right: 91),
                child: Image.asset("images/logo wheather 1.png",
                    width: 193, height: 239),
              ),
              Container(
                  margin: EdgeInsets.only(top: 56),
                  height: 26,
                  width: 109,
                  decoration: BoxDecoration(
                    color: Color(0xFF3391B7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Mulai",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600))))),
              Container(
                padding: EdgeInsets.only(top: 122),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('©Copyright\n Kelompok F2 - All Rights Reserved',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFF07689F),
                                fontSize: 10,
                                fontWeight: FontWeight.w500))),
                    //Text('Kelompok F2 - All Rights Reserved',
                    //   style: GoogleFonts.poppins(
                    //     textStyle: TextStyle(
                    //       color: Color(0xFF07689F),
                    //     fontSize: 10,
                    //   fontWeight: FontWeight.w500)))
                  ],
                ),
              ),
            ])));
  }
}
