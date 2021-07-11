import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/text_styles.dart';

class VideoPremiumLabel extends StatelessWidget {
    const VideoPremiumLabel({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: kVideoPremiumPadding,
            margin: kVideoPremiumMargin,
            decoration: BoxDecoration(
                borderRadius: kSectionContainerSmoothRadius,
                color: kColors["black"]!.withOpacity(0.5)
            ),
            child: Text(
                kTexts["premium"]!,
                style: stylePremium
            )
        );
    }
}