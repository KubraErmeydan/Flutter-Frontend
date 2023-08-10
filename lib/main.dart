import 'package:flutter/material.dart';
import 'package:home_cleaning/pages/account_page.dart';
import 'package:home_cleaning/pages/calendar.dart';
import 'package:home_cleaning/pages/first_page.dart';
import 'package:home_cleaning/pages/plan_page.dart';
import 'package:home_cleaning/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/plan': (context) => PlanPage(),
        '/account': (context) => AccountPage(),
        '/calendar': (context) => CalendarPage(),
        '/first': (context) => FirstPage(),
      },
    );
  }
}
