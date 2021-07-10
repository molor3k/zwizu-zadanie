import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/widgets/horizontal%20scrolled%20section/scrollable_section_widget.dart';
import 'package:zwizu_zadanie/ui/widgets/promo_container_widget.dart';

class MainView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: CustomScrollView(
                slivers: [
                    SliverToBoxAdapter(
                        child: Stack(
                            children: [
                                Container(
                                    height: 500,
                                    child: Image.asset(
                                        "assets/images/tournament.jpg",
                                        fit: BoxFit.cover,
                                    )
                                ),
                                Positioned(
                                    top: 255,
                                    child: PromoContainer()
                                )
                            ],
                        ),
                    ),
                    ScrollableSection(
                        topText: "Prave leti"
                    ),
                    ScrollableSection(
                        topText: "Hraci"
                    ),
                ],
            )
        );
    }
}