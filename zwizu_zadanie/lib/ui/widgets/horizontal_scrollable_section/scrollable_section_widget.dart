import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_list_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_top_widget.dart';


class ScrollableSection extends StatelessWidget {
    final String? topText;
    final Widget? card;
    const ScrollableSection({ 
        Key? key,
        @required this.topText,
        @required this.card,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SliverToBoxAdapter(
            child: Container(
                child: Column(
                    children: [
                        ScrollableSectionTop(
                            text: topText
                        ),
                        ScrollableSectionList(
                            card: this.card!
                        )
                    ],
                )
            )
        );
    }
}