import 'package:flutter/cupertino.dart';

import '../view/screen/Homepage/homepage.dart';
import '../view/screen/about/about.dart';
import '../view/screen/matchpage/match.dart';
import '../view/screen/second/second.dart';

class Routes {
  static String homepage = '/';
  static String secondpage = 'second page';
  static String matchpage = 'match page';
  static String about = 'about page';

  static Map<String, WidgetBuilder> myroutes = {
    homepage: (context) => Homepage(),
    secondpage: (context) => ScondPage(),
    matchpage: (context) => MatchPage(),
    about: (context) => AboutPage(),
  };
}
