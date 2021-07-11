import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/backend/models/section_settings_model.dart';
import 'package:zwizu_zadanie/backend/providers/players_info_provider.dart';
import 'package:zwizu_zadanie/backend/providers/video_info_provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/text_styles.dart';
import 'package:zwizu_zadanie/ui/widgets/app_header_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_widget.dart';

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
                    Consumer<VideoInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSection(
                                topText: kTexts["now"],
                                list: provider.videos,
                                cardType: SectionCardType.Video,
                                sectionSettings: SectionSettingsModel(
                                    CrossAxisAlignment.start,
                                    styleVideoCategory,
                                    styleVideoName
                                )
                            );
                        }
                    ),
                    Consumer<PlayersInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSection(
                                topText: kTexts["players"],
                                list: provider.players,
                                cardType: SectionCardType.Player,
                                sectionSettings: SectionSettingsModel(
                                    CrossAxisAlignment.center,
                                    stylePlayerName,
                                    stylePlayerLabel
                                ),
                            );
                        }
                    )
                ],
            )
        );
    }
}