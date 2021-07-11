import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/core/models/video_model.dart';
import 'package:zwizu_zadanie/views/details_view.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section/section_card_widget.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section_videos/card/section_card_video_body_widget.dart';
import 'package:zwizu_zadanie/widgets/scrollable_section_videos/card/section_card_video_footer_widget.dart';

class SectionCardVideo extends StatelessWidget {
    final VideoModel? videoInfo;
    
    const SectionCardVideo({
        Key? key,
        @required this.videoInfo
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SectionCard(
            body: SectionCardVideoBody(
                image: this.videoInfo!.imageURL,
                isPremium: this.videoInfo!.isPremium,
            ),
            footer: SectionCardVideoFooter(
                topText: this.videoInfo!.category,
                bottomText: this.videoInfo!.name
            ),
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsView()),
                );
            }
        );
    }
}