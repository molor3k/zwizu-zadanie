import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/backend/providers/players_info_provider.dart';
import 'package:zwizu_zadanie/backend/providers/video_info_provider.dart';
import 'package:zwizu_zadanie/constants.dart';
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
                    Consumer<VideoInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSection(
                                topText: kTexts["now"],
                                cardType: SectionCardType.Video,
                                list: provider.videos
                            );
                        }
                    ),
                    Consumer<PlayersInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSection(
                                topText: kTexts["players"],
                                cardType: SectionCardType.Player,
                                list: provider.players
                            );
                        }
                    )
                ],
            )
        );
    }
}