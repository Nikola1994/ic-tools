import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ic_tools/app_localisation.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/route_generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IC Tools',
      theme: ThemeData(
        canvasColor: color_white,
      ),
      initialRoute: RouteGenerator.MAIN_ROUTE,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      ///
      supportedLocales: const [
        Locale('en','EN'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales){
        if (locale == null) {
          debugPrint("*language locale is null!!!");
          return supportedLocales.first;
        }
        for(var supportedLocale in supportedLocales) {
          if(supportedLocale.languageCode == locale.languageCode && supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
