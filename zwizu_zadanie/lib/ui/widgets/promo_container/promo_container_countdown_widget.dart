import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class PromoContainerCountdown extends StatelessWidget {
    const PromoContainerCountdown({ 
        Key? key 
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleNumber = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: kColors["black"]
        );

        final styleText = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: kColors["grey50"],
        );

        return RichText(
            text: TextSpan(
                text: '12',
                style: styleNumber,
                children: <TextSpan>[
                    TextSpan(
                        text: ' dni ',
                        style: styleText
                    ),
                    TextSpan(
                        text: '15',
                        style: styleNumber
                    ),
                    TextSpan(
                        text: ' hod ',
                        style: styleText
                    ),
                    TextSpan(
                        text: '24',
                        style: styleNumber
                    ),
                    TextSpan(
                        text: ' min ',
                        style: styleText
                    ),
                    TextSpan(
                        text: '05',
                        style: styleNumber
                    ),
                    TextSpan(
                        text: ' sek',
                        style: styleText
                    ),
                ]
            ),
        );
    }
}