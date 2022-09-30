import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:nasa_murtaza/components/agriculture.dart';
import 'package:nasa_murtaza/components/all.dart';
import 'package:nasa_murtaza/components/capacityBuilding.dart';
import 'package:nasa_murtaza/components/disastereco.dart';
import 'package:nasa_murtaza/components/disasterhealth.dart';
import 'package:nasa_murtaza/components/disasters.dart';
import 'package:nasa_murtaza/components/ecofor.dart';
import 'package:nasa_murtaza/components/health.dart';
import 'package:nasa_murtaza/components/lambi.dart';
import 'package:nasa_murtaza/components/waterre.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String theme;
  final String date;
  final String language;
  final String level;
  final String type;
  final String link;

  const CourseCard(
      {Key? key,
      required this.title,
      required this.theme,
      required this.date,
      required this.language,
      required this.level,
      required this.type,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget(theme, title, date, language, level, type, link),
    );
  }
}

Widget widget(String theme, String title, String date, String language,
    String level, String type, String link) {
  if (theme == 'Agriculture') {
    return Agriculture(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'All') {
    return All(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Capacity Building') {
    return CapacityBuilding(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme ==
      'Climate, Disasters, Eco Forecasting, Health & Air Quality') {
    return lambi(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Disasters') {
    return disasters(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Disasters, Eco Forecasting') {
    return disastereco(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Disasters, Health & Air Quality') {
    return disashealth(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Eco Forecasting') {
    return ecofor(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Eco Forecasting' ||
      theme == "Eco Forecasting, Agriculture" ||
      theme == 'Eco Forecasting, Water Resources') {
    return ecofor(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Health & Air Quality') {
    return health(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  } else if (theme == 'Water Resources') {
    return waterre(
      title: title,
      theme: theme,
      date: date,
      language: language,
      level: level,
      type: type,
      link: link,
    );
  }
  return const Text("Error");
}
