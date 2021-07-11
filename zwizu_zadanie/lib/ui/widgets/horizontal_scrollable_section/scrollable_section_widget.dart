import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/section_settings_model.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_list_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/scrollable_section_top_widget.dart';


class ScrollableSection extends StatelessWidget {
    final String? topText;
    final SectionCardType? cardType;
    final SectionSettingsModel? sectionSettings;
    final List? list;
    
    const ScrollableSection({ 
        Key? key,
        @required this.topText,
        @required this.cardType,
        @required this.sectionSettings,
        @required this.list,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SliverToBoxAdapter(
            child: Column(
                children: [
                    ScrollableSectionTop(
                        text: topText
                    ),
                    ScrollableSectionList(
                        cardType: this.cardType!,
                        list: this.list!,
                        sectionSettings: this.sectionSettings!,
                    )
                ],
            )
        );
    }
}