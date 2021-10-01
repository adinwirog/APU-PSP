import 'package:apupsp/dailyforecast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
//import 'package:translator/translator.dart';
import 'modelweather.dart';
import 'api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static var today = new DateTime.now();

  var formatedTanggal = new DateFormat.yMMMd().format(today);
  var formatedJam = new DateFormat.Hm().format(today);
  var formatedTanggalbulan = new DateFormat.MMMd().format(today);

  late Future<Weather> futureWeather;
  late Future<Daily> futureDaily;

  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
    futureDaily = fetchDaily();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgroundhome1.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hallo, Naufal!",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600))),
                        Text("Selamat Datang",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color(0xFFF6E120),
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profil.jpg"),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 20),
              padding: EdgeInsets.all(10),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: FutureBuilder<Weather>(
                      future: futureWeather,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          String mains = snapshot.data!.icon.toString();
                          return Image(
                            image: AssetImage('images/weather/$mains.png'),
                            height: 130,
                            width: 130,
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return const CircularProgressIndicator();
                      },
                    ),
                  ),
                  Container(
                      child: Column(
                    children: [
                      Center(
                        child: FutureBuilder<Weather>(
                          future: futureWeather,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data!.temp.round().toString() + ' °C',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600)),
                              );
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }
                            return const CircularProgressIndicator();
                          },
                        ),
                      ),
                      Center(
                        child: FutureBuilder<Weather>(
                          future: futureWeather,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data!.description.toString(),
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              );
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }
                            return const CircularProgressIndicator();
                          },
                        ),
                      ),
                      Text(formatedTanggal.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400))),
                      Text(formatedJam.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400))),
                    ],
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 20),
              padding: EdgeInsets.only(left: 5, top: 10, right: 5),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 55,
                                    child: Center(
                                      child: Text("Hari ini",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300,
                                          ))),
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 55,
                                      child: Center(
                                          child: FutureBuilder<Daily>(
                                        future: futureDaily,
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            return Text(
                                              snapshot.data!.tempmax0
                                                      .round()
                                                      .toString() +
                                                  '/' +
                                                  snapshot.data!.tempmin0
                                                      .round()
                                                      .toString() +
                                                  ' °C',
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                              )),
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text('${snapshot.error}');
                                          }
                                          return const CircularProgressIndicator();
                                        },
                                      )))
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 75,
                                      child: Center(
                                          child: FutureBuilder<Daily>(
                                        future: futureDaily,
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            return Text(
                                              snapshot.data!.description0
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text('${snapshot.error}');
                                          }
                                          return const CircularProgressIndicator();
                                        },
                                      ))),
                                  Container(
                                      height: 30,
                                      width: 75,
                                      child: Center(
                                          child: FutureBuilder<Daily>(
                                        future: futureDaily,
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            String mains =
                                                snapshot.data!.icon0.toString();
                                            return Image(
                                              image: AssetImage(
                                                  'images/weather/$mains.png'),
                                              height: 40,
                                              width: 40,
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text('${snapshot.error}');
                                          }
                                          return const CircularProgressIndicator();
                                        },
                                      )))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Transform.rotate(
                        angle: 1.57,
                        child: Container(
                          color: Colors.black,
                          width: 40.84,
                          height: 1,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 55,
                                    child: Center(
                                      child: Text("Besok",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300,
                                          ))),
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 55,
                                      child: Center(
                                        child: FutureBuilder<Daily>(
                                          future: futureDaily,
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return Text(
                                                snapshot.data!.tempmax1
                                                        .round()
                                                        .toString() +
                                                    '/' +
                                                    snapshot.data!.tempmin1
                                                        .round()
                                                        .toString() +
                                                    ' °C',
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                              );
                                            } else if (snapshot.hasError) {
                                              return Text('${snapshot.error}');
                                            }
                                            return const CircularProgressIndicator();
                                          },
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 75,
                                    child: Center(
                                        child: FutureBuilder<Daily>(
                                      future: futureDaily,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return Text(
                                            snapshot.data!.description1
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.w300)),
                                          );
                                        } else if (snapshot.hasError) {
                                          return Text('${snapshot.error}');
                                        }
                                        return const CircularProgressIndicator();
                                      },
                                    )),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 75,
                                      child: Center(
                                          child: FutureBuilder<Daily>(
                                        future: futureDaily,
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            String mains =
                                                snapshot.data!.icon1.toString();
                                            return Image(
                                              image: AssetImage(
                                                  'images/weather/$mains.png'),
                                              height: 40,
                                              width: 40,
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text('${snapshot.error}');
                                          }
                                          return const CircularProgressIndicator();
                                        },
                                      ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 300,
                    height: 1,
                    color: Colors.black,
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ramalan Harian",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyForecast()));
                            },
                            child: Text("5 hari >",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)))),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text("Hari ini",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text(formatedTanggalbulan.toString(),
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                            height: 20,
                            width: 50,
                            child: Center(
                                child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  String mains =
                                      snapshot.data!.icon0.toString();
                                  return Image(
                                    image:
                                        AssetImage('images/weather/$mains.png'),
                                    height: 30,
                                    width: 30,
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ))),
                        Container(
                          height: 20,
                          width: 100,
                          child: Center(
                              child: FutureBuilder<Daily>(
                            future: futureDaily,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.description0.toString(),
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }
                              return const CircularProgressIndicator();
                            },
                          )),
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          child: Center(
                            child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.tempmax0.round().toString() +
                                        '/' +
                                        snapshot.data!.tempmin0
                                            .round()
                                            .toString() +
                                        ' °C',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text("Besok",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text("24/09",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                            height: 20,
                            width: 50,
                            child: Center(
                                child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  String mains =
                                      snapshot.data!.icon1.toString();
                                  return Image(
                                    image:
                                        AssetImage('images/weather/$mains.png'),
                                    height: 30,
                                    width: 30,
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ))),
                        Container(
                          height: 20,
                          width: 100,
                          child: Center(
                              child: FutureBuilder<Daily>(
                            future: futureDaily,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.description1.toString(),
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }
                              return const CircularProgressIndicator();
                            },
                          )),
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          child: Center(
                            child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.tempmax1.round().toString() +
                                        '/' +
                                        snapshot.data!.tempmin1
                                            .round()
                                            .toString() +
                                        ' °C',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text("Lusa",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                            child: Text("24/09",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        Container(
                            height: 20,
                            width: 50,
                            child: Center(
                                child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  String mains =
                                      snapshot.data!.icon2.toString();
                                  return Image(
                                    image:
                                        AssetImage('images/weather/$mains.png'),
                                    height: 30,
                                    width: 30,
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ))),
                        Container(
                          height: 20,
                          width: 100,
                          child: Center(
                              child: FutureBuilder<Daily>(
                            future: futureDaily,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.description2.toString(),
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }
                              return const CircularProgressIndicator();
                            },
                          )),
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          child: Center(
                            child: FutureBuilder<Daily>(
                              future: futureDaily,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.tempmax2.round().toString() +
                                        '/' +
                                        snapshot.data!.tempmin2
                                            .round()
                                            .toString() +
                                        ' °C',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Keuangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFF3391B7),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
