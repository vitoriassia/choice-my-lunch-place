import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:choicemylunchplace/stores/choice_seat_store.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppConfig {
  static Map<String, WidgetBuilder> routes = {};

  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ChoiceSeatStore()),
  ];

  static Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    // ... app-specific localization delegate[s] here
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static Iterable<Locale> supportedLocales = [
    const Locale('en'), // English
    const Locale('pt'), // brasil
  ];

  static String kAppTitle = 'Choice Lunch Place';

  static ThemeData defaultThemeData = ThemeData.light().copyWith(
    // bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
    // cursorColor: kCoPurple,
    // brightness: Brightness.light,
    primaryColor: kSecondColor,
    // accentColor: kCoPurple,
    scaffoldBackgroundColor: kAppGrey,
    // textSelectionHandleColor: kCoPurple,
    // textSelectionColor: kNotreAccent,
    // splashColor: Color(0x33000423),
    // sliderTheme: SliderThemeData(
    //     trackHeight: 1,
    //     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
    //     overlayColor: Colors.purple.withAlpha(32),
    //     overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
    //     activeTrackColor: kCoPurple,
    //     thumbColor: kCoPurple,
    //     showValueIndicator: ShowValueIndicator.never),
    // buttonTheme: ButtonThemeData(
    //   disabledColor: Colors.grey[400],
    //   buttonColor: kOnbWhite,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   textTheme: ButtonTextTheme.normal,
    //   splashColor: Color(0x33000423),
    // ),
  );
}
