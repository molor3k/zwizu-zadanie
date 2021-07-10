import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_button_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container/promo_container_countdown_widget.dart';

class PromoContainerBottom extends StatelessWidget {
    const PromoContainerBottom({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: kAppPadding,
            color: kColors["yellow"],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Expanded(
                        flex: 2,
                        child: PromoContainerCountdown()
                    ),
                    Expanded(
                        flex: 3,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                                PromoContainerButton(
                                    text: "Koupit ZZP",
                                    isOutlined: false,
                                ),
                                PromoContainerButton(
                                    text: "Vstupenky",
                                    isOutlined: true,
                                ),
                            ],
                        )
                    )
                ],
            ),
        );
    }
}