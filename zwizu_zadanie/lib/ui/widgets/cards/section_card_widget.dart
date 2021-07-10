import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/text_styles.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/section_card_image_widget.dart';

class SectionCard extends StatelessWidget {
    final SectionCardType? cardType;
    final info;
    const SectionCard({ 
        Key? key,
        @required this.cardType,
        @required this.info
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        String? imageURL;
        String mainText = "";
        String secondaryText = "";
        TextStyle mainStyle;
        TextStyle secondaryStyle;
        CrossAxisAlignment crossAxis = CrossAxisAlignment.start;   

        switch(this.cardType) {
            case null:
            case SectionCardType.Player:
                imageURL = "assets/images/player_small.jpg";
                crossAxis = CrossAxisAlignment.center; 

                mainStyle = stylePlayerName;
                secondaryStyle = stylePlayerLabel;
                mainText = info.name;
                secondaryText = info.title;
            break;

            case SectionCardType.Video:
                imageURL = "assets/images/tournament_small.jpg";
                crossAxis = CrossAxisAlignment.start;  

                mainStyle = styleVideoCategory;
                secondaryStyle = styleVideoName;
                mainText = info.category;
                secondaryText = info.name;
            break;
        }

        return GestureDetector(
            onTap: () {
                print("sss");
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: crossAxis,
                children: [
                    SectionCardImage(
                        image: imageURL
                    ),
                    Padding(
                        padding: kSectionTextPadding,
                        child: Text(
                            mainText,
                            style: mainStyle
                        )
                    ),
                    Text(
                        secondaryText,
                        style: secondaryStyle
                    ),
                ],
            )
        );
    }
}