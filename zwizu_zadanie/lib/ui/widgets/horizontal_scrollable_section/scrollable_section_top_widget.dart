import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/text_styles.dart';
import 'package:zwizu_zadanie/ui/widgets/text_arrow_button_widget.dart';


class ScrollableSectionTop extends StatelessWidget {
    final String? text;
    
    const ScrollableSectionTop({ 
        Key? key,
        @required this.text
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: kAppPadding,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                        this.text!,
                        style: styleSectionName
                    ),
                    TextArrowButton(
                        text: kTexts["more"]!,
                        textSize: 16,
                        textWeight: FontWeight.w500
                    )
                ],
            )
        );
    }
}