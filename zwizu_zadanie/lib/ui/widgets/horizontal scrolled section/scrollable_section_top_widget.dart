import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

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
                        style: TextStyle(
                            fontFamily: "Silka",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: kColors["white"],
                        ),
                    ),
                    Text(
                        "Vice >",
                        style: TextStyle(
                            fontFamily: "Silka",
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: kColors["yellow"]
                        ),
                    ),
                ],
            )
        );
    }
}