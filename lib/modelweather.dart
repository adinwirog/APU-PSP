class Weather {
  double temp;
  String description;
  String icon;

  Weather({
    required this.temp,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map json) {
    return Weather(
        temp: json['main']['temp'],
        description: json['weather'][0]['description'],
        icon: json['weather'][0]['icon']);
  }
}

class Daily {
  //List<double> tempmax;
  //List<double> tempmin;
  //List<String> description;
  //List<String> icon;

  double tempmax0;
  double tempmin0;
  String description0;
  String icon0;

  double tempmax1;
  double tempmin1;
  String description1;
  String icon1;

  double tempmax2;
  double tempmin2;
  String description2;
  String icon2;

  Daily({
    required this.tempmax0,
    required this.tempmin0,
    required this.description0,
    required this.icon0,
    required this.tempmax1,
    required this.tempmin1,
    required this.description1,
    required this.icon1,
    required this.tempmax2,
    required this.tempmin2,
    required this.description2,
    required this.icon2,
  });

  factory Daily.fromJson(Map json) {
    //for (int x = 0; x < ['daily'].length; x++) {
    //tempmax.add(json['daily'][x]['temp']['max']);
    //}
    return Daily(
        tempmax0: (json['daily'][0]['temp']['max']) - 273.15,
        tempmin0: (json['daily'][0]['temp']['min']) - 273.15,
        description0: json['daily'][0]['weather'][0]['description'],
        icon0: json['daily'][0]['weather'][0]['icon'],
        tempmax1: (json['daily'][1]['temp']['max']) - 273.15,
        tempmin1: (json['daily'][1]['temp']['min']) - 273.15,
        description1: json['daily'][1]['weather'][0]['description'],
        icon1: json['daily'][1]['weather'][0]['icon'],
        tempmax2: (json['daily'][2]['temp']['max']) - 273.15,
        tempmin2: (json['daily'][2]['temp']['min']) - 273.15,
        description2: json['daily'][2]['weather'][0]['description'],
        icon2: json['daily'][2]['weather'][0]['icon']);
  }
}
