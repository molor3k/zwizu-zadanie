import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/section_card_image_widget.dart';

class PlayerCard extends StatelessWidget {
    const PlayerCard({ 
        Key? key 
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleName = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: kColors["white"]
        );
        
        final styleLabel = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w700,
            fontSize: 10,
            color: kColors["grey50"],
        );
        
        return GestureDetector(
            onTap: () {
                print("sss");
            },
            child: Column(
                children: [
                    SectionCardImage(
                        image: "assets/images/player_small.jpg"
                    ),
                    Padding(
                        padding: kSectionTextPadding,
                        child: Text(
                            "John Doe",
                            style: styleName
                        )
                    ),
                    Text(
                        "CHAMPION",
                        style: styleLabel
                    ),
                ],
            )
        );
    }
}