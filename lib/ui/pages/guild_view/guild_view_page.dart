import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/pages/guild_view/widgets/body_guild_view.dart';

class GuildViewPage extends StatefulWidget {
  final String idGuild;
  GuildViewPage(this.idGuild, {Key? key}) : super(key: key);

  @override
  State<GuildViewPage> createState() => _GuildViewPageState();
}

class _GuildViewPageState extends State<GuildViewPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: responsive.hp(100),
          width: responsive.wp(100),
          child: Stack(
            children: [
              SizedBox(
                width: responsive.wp(100),
                height: responsive.hp(50),
                child: Hero(
                  tag: 'guild_image_${widget.idGuild}',
                  child: Image(
                    image: NetworkImage(
                        'https://c.tenor.com/PcnDX7QUiP8AAAAd/anime-girl.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: BodyGuildView(),
              ),
              Positioned(
                top: responsive.hp(7),
                left: responsive.wp(4),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(108, 0, 0, 0),
                    child: Icon(Icons.arrow_back_ios_sharp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
