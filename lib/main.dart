import 'package:choicemylunchplace/core/app_config.dart';
import 'package:choicemylunchplace/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppConfig.providers,
      child: MaterialApp(
        localizationsDelegates: AppConfig.localizationsDelegates,
        supportedLocales: AppConfig.supportedLocales,
        routes: AppConfig.routes,
        title: AppConfig.kAppTitle,
        theme: AppConfig.defaultThemeData,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (_) => HomeScreen());
        },
      ),
    );
  }
}
