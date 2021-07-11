import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class ScrollableSectionList extends StatelessWidget {
    final int? itemCount;
    final Widget Function(BuildContext, int)? itemBuilder;
    
    const ScrollableSectionList({
        Key? key,
        @required this.itemCount,
        @required this.itemBuilder,
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
               
                itemCount: this.itemCount!,
                itemBuilder: this.itemBuilder!
            )
        );
    }
}