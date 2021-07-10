import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal_scrollable_section/text_arrow_button_widget.dart';


class ScrollableSectionTop extends StatelessWidget {
    final String? text;
    const ScrollableSectionTop({ 
        Key? key,
        @required this.text
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleName = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: kColors["white"]
        );

        final styleMore = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: kColors["yellow"]
        );

        return Padding(
            padding: kAppPadding,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                        this.text!,
                        style: styleName
                    ),
                    TextArrowButton(
                        text: kTexts["more"]!,
                        textStyle: styleMore,
                    )
                ],
            )
        );
    }
}