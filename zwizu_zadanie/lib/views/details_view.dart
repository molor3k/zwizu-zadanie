import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
class DetailsView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: IconButton(
                    icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: kColors["white"]
                    ),
                    onPressed: () {
                        Navigator.pop(context);
                    },
                ),
            ),
        );
    }
}