import 'package:flutter/material.dart';

// To ensure every widgets and layers follow the same styles and parameters

// Widgets colors
//Color clrBackground = Color.fromRGBO(20, 20, 20, 1);
Color clrBackground = Color.fromRGBO(20, 20, 20, 1);
Color clrAppBarr = Color.fromRGBO(70, 70, 70, 1);
Color clrItems = Color.fromRGBO(40, 40, 40, 1);
Color clrItemsTop = Color.fromRGBO(70, 70, 70, 1);
Color clrText = Color.fromRGBO(255, 255, 255, 0.75);

// Text Styles
TextStyle textAppBar = TextStyle(
    color: clrText,
    fontFamily: 'NotoSansJP',
    fontWeight: FontWeight.bold,
    letterSpacing: 0);
TextStyle textCardTitle = TextStyle(
  color: clrText,
  fontFamily: 'NotoSansJP',
);
TextStyle textCardTitleRed = TextStyle(
  color: Color.fromRGBO(0xF4, 0x43, 0x36, 100),
  fontWeight: FontWeight.bold,
  fontFamily: 'NotoSansJP',
);
TextStyle textCardSubtitle = TextStyle(
  color: clrText,
  fontFamily: 'OpenSans',
);

TextStyle textBoxHeader =
    TextStyle(color: clrText, fontFamily: 'NotoSansJP', fontSize: 20);
TextStyle textBoxTitle = TextStyle(
  color: clrText,
  fontFamily: 'NotoSansJP',
);
TextStyle textBoxSubtitle = TextStyle(
    color: clrText, fontFamily: 'OpenSans', fontStyle: FontStyle.italic);

// Widget Styles
double appBarElevation = 10;
double cardElevation = 0;
ShapeBorder cardRadius =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
double edgeValue = 10.0;
EdgeInsets padSides =
    EdgeInsets.only(bottom: edgeValue, left: edgeValue, right: edgeValue);

// Custom Classes
class StatesMalaysia {
  String icon;
  String flag;
  String name;
  StatesMalaysia({this.icon, this.flag, this.name});
}

List<StatesMalaysia> states = [
  StatesMalaysia(icon: 'jhr_i.png', flag: 'jhr_f.png', name: 'Johor'),
  StatesMalaysia(icon: 'kdh_i.png', flag: 'kdh_f.png', name: 'Kedah'),
  StatesMalaysia(icon: 'ktn_i.png', flag: 'ktn_f.png', name: 'Kelantan'),
  StatesMalaysia(icon: 'mlk_i.png', flag: 'mlk_f.png', name: 'Melaka'),
  StatesMalaysia(icon: 'nsn_i.png', flag: 'nsn_f.png', name: 'Negeri Sembilan'),
  StatesMalaysia(icon: 'phg_i.png', flag: 'phg_f.png', name: 'Pahang'),
  StatesMalaysia(icon: 'png_i.png', flag: 'png_f.png', name: 'Pulau Pinang'),
  StatesMalaysia(icon: 'prk_i.png', flag: 'prk_f.png', name: 'Perak'),
  StatesMalaysia(icon: 'pls_i.png', flag: 'pls_f.png', name: 'Perlis'),
  StatesMalaysia(icon: 'sbh_i.png', flag: 'sbh_f.png', name: 'Sabah'),
  StatesMalaysia(icon: 'swk_i.png', flag: 'swk_f.png', name: 'Sarawak'),
  StatesMalaysia(icon: 'sgr_i.png', flag: 'sgr_f.png', name: 'Selangor'),
  StatesMalaysia(icon: 'trg_i.png', flag: 'trg_f.png', name: 'Terengganu'),
  StatesMalaysia(icon: 'kul_i.png', flag: 'kul_f.png', name: 'WP Kuala Lumpur'),
  StatesMalaysia(icon: 'lbn_i.png', flag: 'lbn_f.png', name: 'WP Labuan'),
  StatesMalaysia(icon: 'pjy_i.png', flag: 'pjy_f.png', name: 'WP Putrajaya'),
];

class TeamMembers {
  String id;
  String name;
  TeamMembers({this.id, this.name});
}

List<TeamMembers> team12 = [
  TeamMembers(id: '17152940/2', name: 'Muhammad Ammar bin Hassan@Zakaria'),
  TeamMembers(id: '17188266/2', name: 'Muhammad Azizul Hazim bin Abd Razak'),
  TeamMembers(id: '17081353/2', name: 'Muhammad Ariff Firdaus bin Rosli'),
  TeamMembers(id: '17205673/1', name: 'Goh Wen Zheng'),
  TeamMembers(id: '17103584/2', name: 'Mohammad Nadzmi bin Jamal Nasir'),
];

class DataSource {
  String link;
  String name;
  DataSource({this.link, this.name});
}

class Tools {
  String name;
  String function;
  Tools({this.name, this.function});
}

List<DataSource> sourceData = [
  DataSource(
      link: 'https://kpkesihatan.com/',
      name: 'From the Desk of the Director-General of Health Malaysia'),
];

List<Tools> tools = [
  Tools(name: 'Python', function: 'Web Scraping and Data Analysis'),
  Tools(name: 'Github', function: 'Automation and Executing Python Scripts'),
  Tools(name: 'Firebase', function: 'Application Back-End Implementation'),
  Tools(name: 'Flutter', function: 'Application Front-End Implementation'),
];
// Custom Widgets
