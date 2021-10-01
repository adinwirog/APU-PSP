import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apupsp/splashscreen.dart';
import 'package:apupsp/home.dart';

class InputData extends StatefulWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: ListView(
          children: [
            Container(
              //decoration: BoxDecoration(
              //  image: DecorationImage(
              //    image: AssetImage("images/backgroundform.png"))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('LAHAN',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFF3391B7),
                                fontSize: 30,
                                fontWeight: FontWeight.w800))),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Nama Petani',
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Luas Lahan (m²)',
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Jenis Lahan',
                                ),
                              ),
                              Container(
                                color: Color(0xFFFFFFFF),
                                padding: EdgeInsets.only(
                                    left: 30, top: 30, right: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 35,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF3391B7),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 3,
                                              blurRadius: 5,
                                            )
                                          ],
                                        ),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text("Simpan",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                        fontSize: 12,
                                                        fontWeight: FontWeight
                                                            .w600))))),
                                    Container(
                                        height: 35,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(
                                              color: Color(0xFF3391B7)),
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                      builder: (context) =>
                                                          SplashScreenPage()));
                                            },
                                            child: Text("Batal",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xFF3391B7),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600)))))
                                  ],
                                ),
                              )
                            ],
                          ))),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text("Selanjutnya >",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)))),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/backgroundinput.png"),
                        fit: BoxFit.cover,
                      )))
                ],
              ),
            ),
          ],
        ));
  }
}
