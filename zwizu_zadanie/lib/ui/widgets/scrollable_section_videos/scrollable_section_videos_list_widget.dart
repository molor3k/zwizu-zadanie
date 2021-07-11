import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section/scrollable_section_list_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_videos/card/section_card_video_widget.dart';


class ScrollableSectionVideosList extends StatelessWidget {
    final List? list;
    
    const ScrollableSectionVideosList({
        Key? key,
        @required this.list
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ScrollableSectionList(
            itemCount: this.list!.length,
            itemBuilder: (context, index) {
                return SectionCardVideo(
                    videoInfo: this.list![index]
                );
            }
        );
    }
}