import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
    final Widget? body;
    final Widget? footer;
    final Function()? onTap;
    
    final MainAxisAlignment? mainAxisAlignment;
    final CrossAxisAlignment? crossAxisAlignment;

    const SectionCard({
        Key? key,
        @required this.body,
        @required this.footer,
        @required this.onTap,
        this.mainAxisAlignment = MainAxisAlignment.start,
        this.crossAxisAlignment = CrossAxisAlignment.start
    }) : super(key: key);

@override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: this.onTap,
            child: Column(
                mainAxisAlignment: this.mainAxisAlignment!,
                crossAxisAlignment: this.crossAxisAlignment!,
                children: [
                    this.body!,
                    this.footer!
                ],
            )
        );
    }
}