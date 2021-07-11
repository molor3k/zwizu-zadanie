import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/section_list_element_model.dart';
import 'package:zwizu_zadanie/backend/models/section_settings_model.dart';
import 'package:zwizu_zadanie/backend/models/video_model.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/views/details_view.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card/section_card_image_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card/section_card_video_widget.dart';

class SectionCard extends StatelessWidget {
    final SectionCardType? cardType;
    final SectionListElementModel? info;
    final SectionSettingsModel? sectionSettings;

    const SectionCard({ 
        Key? key,
        @required this.cardType,
        @required this.info,
        @required this.sectionSettings
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsView()),
                );
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: sectionSettings!.crossAxis!,
                children: [
                    if (this.cardType == SectionCardType.Player)
                        SectionCardImage(
                            image: info!.imageURL
                        ) 
                    else
                        SectionCardVideo(
                            info: info! as VideoModel
                        ),
                    Padding(
                        padding: kSectionTextPadding,
                        child: Text(
                            info!.topText!,
                            style: sectionSettings!.topTextStyle!
                        )
                    ),
                    Text(
                        info!.bottomText!,
                        style: sectionSettings!.bottomTextStyle!
                    ),
                ],
            )
        );
    }
}