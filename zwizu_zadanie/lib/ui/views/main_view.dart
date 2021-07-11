import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/ui/widgets/app_header_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_players/scrollable_section_players_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_videos/scrollable_section_videos_widget.dart';

class MainView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                    SliverToBoxAdapter(
                        child: AppHeader()
                    ),
                    ScrollableSectionVideos(),
                    ScrollableSectionPlayers()
                ],
            )
        );
    }
}