import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/text_styles.dart';

class SectionCardPlayerFooter extends StatelessWidget {
    final String? topText;
    final String? bottomText;

    const SectionCardPlayerFooter({
        Key? key,
        @required this.topText,
        @required this.bottomText,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Padding(
                    padding: kSectionTextPadding,
                    child: Text(
                        this.topText!,
                        style: stylePlayerName
                    )
                ),
                Text(
                    this.bottomText!,
                    style: stylePlayerLabel
                ),
            ],
        );
    }
}