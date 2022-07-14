import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/first_view/first_view_page.dart';

class LoadedApp extends StatefulWidget {
  const LoadedApp({Key? key}) : super(key: key);

  @override
  State<LoadedApp> createState() => _LoadedAppState();
}

class _LoadedAppState extends State<LoadedApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const FirstViewPage(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colores.naranja,
          size: responsive.dp(30),
        ),
      ),
    );
  }
}
