import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class TextArrowButton extends StatelessWidget {
    final String? text;
    final double? textSize;
    final FontWeight? textWeight;
    const TextArrowButton({ 
        Key? key,
        @required this.text,
        @required this.textSize,
        @required this.textWeight
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleText = TextStyle(
            fontFamily: "Silka",
            fontWeight: this.textWeight,
            fontSize: this.textSize,
            color: kColors["yellow"]
        );

        return GestureDetector(
            onTap: () {
                print("text arrow button");
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                        this.text!,
                        style: styleText
                    ),
                    Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kColors["yellow"],
                        size: (this.textSize! - 1),
                    )
                ],
            )
        );
    }
}