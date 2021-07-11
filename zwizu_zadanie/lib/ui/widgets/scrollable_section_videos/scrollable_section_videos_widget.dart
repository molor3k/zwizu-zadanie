import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/backend/providers/video_info_provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section/scrollable_section_header_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_videos/scrollable_section_videos_list_widget.dart';

class ScrollableSectionVideos extends StatelessWidget {
    const ScrollableSectionVideos({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SliverToBoxAdapter(
            child: Column(
                children: [
                    ScrollableSectionHeader(
                        text: kTexts["videos_now"]
                    ),
                    Consumer<VideoInfoProvider>(
                        builder: (context, provider, child) {
                            return ScrollableSectionVideosList(
                                list: provider.videos
                            );
                        }
                    )
                ],
            )
        );
    }
}