import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/text_styles.dart';

class SectionCardVideoFooter extends StatelessWidget {
    final String? topText;
    final String? bottomText;

    const SectionCardVideoFooter({
        Key? key,
        @required this.topText,
        @required this.bottomText,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                    padding: kSectionTextPadding,
                    child: Text(
                        this.topText!,
                        style: styleVideoCategory
                    )
                ),
                Text(
                    this.bottomText!,
                    style: styleVideoName
                ),
            ],
        );
    }
}            