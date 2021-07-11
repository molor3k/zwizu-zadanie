import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_videos/card/etc/video_play_button_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/scrollable_section_videos/card/etc/video_premium_label_widget.dart';

class SectionCardVideoBody extends StatelessWidget {
    final String? image;
    final bool? isPremium;
    
    const SectionCardVideoBody({
        Key? key,
        @required this.image,
        this.isPremium = false
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: kCardHeight,
            child: AspectRatio(
                aspectRatio: 1.5,
                child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: kSectionContainerSmoothRadius,
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: ExactAssetImage(this.image!)
                        )
                    ),
                    child: Stack(
                        children: [
                            Align(
                                alignment: Alignment.center,
                                child: VideoPlayButton()
                            ),
                            Visibility(
                                visible: this.isPremium!,
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: VideoPremiumLabel()
                                )
                            )
                        ],
                    )
                )
            )
        );
    }
}