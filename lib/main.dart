import 'package:first_app/provider/list_manage_change/list_manage_change.dart';
import 'package:first_app/provider/second_page_provider/second_page_counter_provider.dart';
import 'package:first_app/splash_screen.dart';
import 'package:first_app/theme_manage/with_provider/theme_provider.dart';
import 'package:first_app/theme_manage/with_ui_helper_class/theme_provider_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider2(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
