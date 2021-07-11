import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/constants.dart';

class VideoPlayButton extends StatelessWidget {
    const VideoPlayButton({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: kColors["white"]!,
                    width: 1.0
                ),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
                        decoration: BoxDecoration(
                            color: kColors["black"]!.withOpacity(0.5),
                        ),
                        child: FaIcon(
                            FontAwesomeIcons.play,
                            color: kColors["white"],
                            size: 30
                        )
                    )
                )
            )
        );
    }
}