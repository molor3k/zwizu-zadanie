import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class SectionCardPlayerBody extends StatelessWidget {
    final String? image;
    
    const SectionCardPlayerBody({
        Key? key,
        @required this.image
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: kCardHeight,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: kSectionContainerSmoothRadius,
            ),
            child: AspectRatio(
                aspectRatio: 0.7,
                child: Image.asset(
                    this.image!,
                    fit: BoxFit.fill,
                )
            )
        );
    }
}