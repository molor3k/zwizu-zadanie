import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal%20scrolled%20section/scrollable_section_list_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal%20scrolled%20section/scrollable_section_top_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card_widget.dart';

class ScrollableSection extends StatelessWidget {
    final String? topText;
    const ScrollableSection({ 
        Key? key,
        @required this.topText
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SliverToBoxAdapter(
            child: Container(
                // padding: kAppPadding,
                child: Column(
                    children: [
                        ScrollableSectionTop(
                            text: topText
                        ),
                        ScrollableSectionList(
                            card: SectionCard(
                                image: "assets/images/player_small.jpg"
                            )
                        )
                    ],
                )
            )
        );
    }
}