import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/video_model.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card/video/video_play_button_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card/video/video_premium_label_widget.dart';

class SectionCardVideo extends StatelessWidget {
    final VideoModel? info;
    const SectionCardVideo({
        Key? key,
        @required this.info
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
                            image: ExactAssetImage(this.info!.imageURL!)
                        )
                    ),
                    child: Stack(
                        children: [
                            Align(
                                alignment: Alignment.center,
                                child: VideoPlayButton()
                            ),

                            if (info!.isPremium!) 
                                Align(
                                    alignment: Alignment.topRight,
                                    child: VideoPremiumLabel()
                                )
                            else
                                Container()
                        ],
                    )
                )
            )
        );
    }
}