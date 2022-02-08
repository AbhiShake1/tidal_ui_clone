import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/core/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
  ));
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.black,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        textTheme: GoogleFonts.vartaTextTheme().apply(
          bodyColor: Colors.white,
        ),
        brightness: Brightness.dark,
      ),
      onGenerateRoute: generateRoutes,
      //initialRoute: '/home',
    );
  }
}
