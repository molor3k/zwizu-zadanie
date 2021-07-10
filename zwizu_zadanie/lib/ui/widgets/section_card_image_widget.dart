import 'package:flutter/material.dart';

class SectionCardImage extends StatelessWidget {
    final String? image;
    const SectionCardImage({
        Key? key,
        @required this.image
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Image.asset(
                this.image!,
                fit: BoxFit.fill,
            )
        );
    }
}