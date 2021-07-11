import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/section_settings_model.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card/section_card_widget.dart';

class ScrollableSectionList extends StatelessWidget {
    final SectionCardType? cardType;
    final SectionSettingsModel? sectionSettings;
    final List? list;
    
    const ScrollableSectionList({
        Key? key,
        @required this.cardType,
        @required this.sectionSettings,
        @required this.list
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: kHorizontalListHeight,
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: kSectionListPadding,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => kSectionListSeparator,
               
                itemCount: this.list!.length,
                itemBuilder: (context, index) {
                    return SectionCard(
                        cardType: this.cardType, 
                        info: this.list![index],
                        sectionSettings: this.sectionSettings,
                    );
                }
            )
        );
    }
}