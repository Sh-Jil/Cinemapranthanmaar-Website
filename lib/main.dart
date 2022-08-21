
import 'package:cinemapranthanmaar/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'src/res/fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'CinemaPranthanmaar',
      theme: ThemeData(fontFamily: FontFamily.manrope),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.home,
    );
  }
}
