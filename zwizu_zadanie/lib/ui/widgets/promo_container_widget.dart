import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class PromoContainer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            margin: kAppPadding,
            height: kPromoContainerHeight,
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
            ),
            child: Column(
                children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: kColors["black"],
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            color: kColors["yellow"],
                        )
                    ),
                ],
            ),
        );
    }
}