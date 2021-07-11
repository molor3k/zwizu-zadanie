import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/core/models/countdown_model.dart';
import 'package:zwizu_zadanie/core/providers/promo_info_provider.dart';
import 'package:zwizu_zadanie/text_styles.dart';

class PromoContainerCountdown extends StatelessWidget {
    const PromoContainerCountdown({ 
        Key? key 
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Consumer<PromoInfoProvider>(
            builder: (context, provider, child) {
                CountdownModel countdown = provider.timeUntilTournament!;
                
                return RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                            TextSpan(
                                text: countdown.days.toString(),
                                style: styleCountdownNumber
                            ),
                            TextSpan(
                                text: ' dni ',
                                style: styleCountdownText
                            ),
                            TextSpan(
                                text: countdown.hours.toString(),
                                style: styleCountdownNumber
                            ),
                            TextSpan(
                                text: ' hod ',
                                style: styleCountdownText
                            ),
                            TextSpan(
                                text: countdown.minutes.toString(),
                                style: styleCountdownNumber
                            ),
                            TextSpan(
                                text: ' min ',
                                style: styleCountdownText
                            ),
                            TextSpan(
                                text: countdown.seconds.toString(),
                                style: styleCountdownNumber
                            ),
                            TextSpan(
                                text: ' sek',
                                style: styleCountdownText
                            ),
                        ]
                    ),
                );
            }
        );
    }
}