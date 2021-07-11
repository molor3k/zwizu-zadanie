import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/core/models/player_model.dart';
import 'package:zwizu_zadanie/views/details_view.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section/section_card_widget.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section_players/card/section_card_player_body_widget.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section_players/card/section_card_player_footer_widget.dart';

class SectionCardPlayer extends StatelessWidget {
    final PlayerModel? playerInfo;
    
    const SectionCardPlayer({
        Key? key,
        @required this.playerInfo
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SectionCard(
            crossAxisAlignment: CrossAxisAlignment.center,
            body: SectionCardPlayerBody(
                image: this.playerInfo!.imageURL
            ),
            footer: SectionCardPlayerFooter(
                topText: this.playerInfo!.name,
                bottomText: this.playerInfo!.title
            ),
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsView()),
                );
            }
        );
    }
}