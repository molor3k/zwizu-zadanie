import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/backend/providers/players_info_provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section/scrollable_section_header_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_players/scrollable_section_players_list_widget.dart';

class ScrollableSectionPlayers extends StatelessWidget {
    const ScrollableSectionPlayers({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SliverToBoxAdapter(
            child: Column(
                children: [
                    ScrollableSectionHeader(
                        text: kTexts["players"]
                    ),
                    Consumer<PlayersInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSectionPlayersList(
                                list: provider.players
                            );
                        }
                    )
                ],
            )
        );
    }
}