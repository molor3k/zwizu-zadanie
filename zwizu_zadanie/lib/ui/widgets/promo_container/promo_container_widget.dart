import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_bottom_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_top_widget.dart';

class PromoContainer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            height: kPromoContainerHeight,
            width: double.infinity,
            margin: kAppPadding,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Column(
                children: [
                    Expanded(
                        flex: 3,
                        child: PromoContainerTop()
                    ),
                    Expanded(
                        flex: 2,
                        child: PromoContainerBottom()
                    ),
                ],
            ),
        );
    }
}