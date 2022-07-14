import 'package:flutter/material.dart';
import 'package:guild_events/ui/pages/home/home_page.dart';
import 'package:guild_events/ui/pages/loaded_app/loaded_app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guild Events',
      //home: LoadedApp(),
      home: HomePage(),
    );
  }
}
