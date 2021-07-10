import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/cards/section_card_widget.dart';

class ScrollableSectionList extends StatelessWidget {
    final SectionCardType? cardType;
    final List? list;
    const ScrollableSectionList({
        Key? key,
        @required this.cardType,
        @required this.list
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: kHorizontalListHeight,
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: this.list!.length,
                separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                ),
                itemBuilder: (context, index) {
                    return SectionCard(
                        cardType: this.cardType, 
                        info: this.list![index]
                    );
                }
            )
        );
    }
}