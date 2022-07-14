import 'package:flutter/material.dart';
import 'package:guild_events/ui/pages/first_view/views/bienvenida_view.dart';
import 'package:guild_events/ui/pages/first_view/views/info_view.dart';

class FirstViewPage extends StatelessWidget {
  const FirstViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          const BienvenidaView(),
          InfoView(),
        ],
      ),
    );
  }
}
