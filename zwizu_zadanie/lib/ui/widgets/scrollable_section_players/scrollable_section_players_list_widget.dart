import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section/scrollable_section_list_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_players/card/section_card_player_widget.dart';


class ScrollableSectionPlayersList extends StatelessWidget {
    final List? list;
    
    const ScrollableSectionPlayersList({
        Key? key,
        @required this.list
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ScrollableSectionList(
            itemCount: this.list!.length,
            itemBuilder: (context, index) {
                return SectionCardPlayer(
                    playerInfo: this.list![index]
                );
            }
        );
    }
}