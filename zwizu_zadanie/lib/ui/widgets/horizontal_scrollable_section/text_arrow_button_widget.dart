import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class TextArrowButton extends StatelessWidget {
    final String? text;
    final TextStyle? textStyle;
    const TextArrowButton({ 
        Key? key,
        @required this.text,
        @required this.textStyle
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                print("text arrow button");
            },
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                        kTexts["more"]!,
                        style: textStyle
                    ),
                    Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kColors["yellow"],
                        size: 16,
                    )
                ],
            )
        );
    }
}