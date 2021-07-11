import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_widget.dart';

class AppHeader extends StatelessWidget {
    const AppHeader({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Stack(
            clipBehavior: Clip.none,
            children: [
                Container(
                    clipBehavior: Clip.none,
                    height: kBackgroundHeight,
                    child: Image.asset(
                        "assets/images/tournament_small.jpg",
                        fit: BoxFit.cover,
                    )
                ),
                Container(
                    clipBehavior: Clip.none,
                    margin: kPromoContainerPadding,
                    child: PromoContainer()
                )
            ],
        );
    }
}