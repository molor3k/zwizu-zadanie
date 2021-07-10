import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/cards/player_card_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/cards/video_card_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_widget.dart';

class MainView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                    SliverToBoxAdapter(
                        child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                                Container(
                                    clipBehavior: Clip.none,
                                    height: 500,
                                    child: Image.asset(
                                        "assets/images/tournament.jpg",
                                        fit: BoxFit.cover,
                                    )
                                ),
                                Container(
                                    clipBehavior: Clip.none,
                                    margin: EdgeInsets.only(top: 255),
                                    child: PromoContainer()
                                )
                            ],
                        ),
                    ),
                    ScrollableSection(
                        topText: kTexts["now"],
                        card: VideoCard()
                    ),
                    ScrollableSection(
                        topText: kTexts["players"],
                        card: PlayerCard()
                    ),
                ],
            )
        );
    }
}