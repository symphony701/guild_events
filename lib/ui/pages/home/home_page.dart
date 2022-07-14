import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/main_home/main_home.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pages = [
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colores.naranja,
          ),

          /// Eventos
          SalomonBottomBarItem(
            icon: const Icon(Icons.event),
            title: const Text("Events"),
            selectedColor: Colores.naranja,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.shield),
            title: const Text("Guilds"),
            selectedColor: Colores.naranja,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colores.naranja,
          ),
        ],
      ),
    );
  }
}
