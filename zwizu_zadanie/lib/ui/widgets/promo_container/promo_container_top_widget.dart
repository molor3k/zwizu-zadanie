import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/text_arrow_button_widget.dart';

class PromoContainerTop extends StatelessWidget {
    const PromoContainerTop({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleNearest = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: kColors["grey30"]
        );

        final styleName = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w700,
            fontSize: 32,
            color: kColors["white"]
        );

        final styleDate = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: kColors["white"]
        );


        return Container(
            padding: kAppPadding,
            color: kColors["black"],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Text(
                        "NEJBLIZSI TURNAJ",
                        style: styleNearest
                    ),
                    Column(
                        children: [
                            Text(
                                "TURNAJ 22",
                                style: styleName
                            ),
                            Text(
                                "So 07.07.2022 v 19:00",
                                style: styleDate
                            ),
                        ],
                    ),
                    TextArrowButton(
                        text: kTexts["tournament_info"], 
                        textSize: 17,
                        textWeight: FontWeight.w600
                    )
                ],
            ),
        );
    }
}