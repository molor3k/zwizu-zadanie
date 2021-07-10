import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card_image_widget.dart';

class VideoCard extends StatelessWidget {
    const VideoCard({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleCategory = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 11,
            color: kColors["grey50"],
        );

        final styleVideo = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: kColors["white"]
        );


        return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SectionCardImage(
                    image: "assets/images/tournament_small.jpg"
                ),
                Padding(
                    padding: kSectionTextPadding,
                    child: Text(
                        "TURNAJ 20",
                        style: styleCategory
                    )
                ),
                Text(
                    "Souboj o trun",
                    style: styleVideo
                ),
            ],
        );
    }
}