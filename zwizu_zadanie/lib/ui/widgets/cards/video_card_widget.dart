import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card_image_widget.dart';

class VideoCard extends StatelessWidget {
    const VideoCard({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final tournamentNameStyle = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: kColors["grey50"],
        );

        final videoNameStyle = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 22,
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
                    padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: Text(
                        "TURNAJ 20",
                        style: tournamentNameStyle
                    )
                ),
                Text(
                    "Souboj o trun",
                    style: videoNameStyle
                ),
            ],
        );
    }
}