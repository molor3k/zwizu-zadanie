import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/core/providers/promo_info_provider.dart';
import 'package:zwizu_zadanie/text_styles.dart';
import 'package:zwizu_zadanie/widgets/text_arrow_button_widget.dart';

class PromoContainerTop extends StatelessWidget {
    const PromoContainerTop({
        Key? key
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Consumer<PromoInfoProvider>(
            builder: (context, provider, child) {
                return Container(
                    padding: kAppPadding,
                    color: kColors["black"]!.withOpacity(0.6),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            Text(
                                kTexts["tournament_nearest"]!,
                                style: styleTournamentNearest
                            ),
                            Column(
                                children: [
                                    Text(
                                        provider.tournamentName!,
                                        style: styleTournamentName
                                    ),
                                    Text(
                                        provider.tournamentDateString!,
                                        style: styleTournamentDate
                                    ),
                                ],
                            ),
                            TextArrowButton(
                                text: kTexts["tournament_info"], 
                                textSize: 17,
                                textWeight: FontWeight.w600
                            )
                        ],
                    ),
                );
            }
        );

    }
}