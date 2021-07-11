import 'package:flutter/material.dart';

enum SectionCardType {
    Player,
    Video
}

const kColors = {
    "black": const Color(0xff161616),
    "white": const Color(0xffffffff),
    "yellow": const Color(0xffffd302),
    "grey50": const Color(0xff8d8d8d),
    "grey30": const Color(0xffc6c6c6)
};

const kTexts = {
    "more": "Více",
    "now": "Právě letí",
    "players": "Hráči",
    "tournament_nearest": "NEJBLIŽŠÍ TURNAJ",
    "tournament_info": "Více informací o turnaje",
    "tickets": "Vstupenky",
    "tickets_buy": "Koupit ZZP",
    "premium": "Premium"
};

const kSectionListSeparator = const SizedBox(width: 10);

const kAppPadding = const EdgeInsets.all(16.0);
const kVideoPremiumPadding = const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0);
const kVideoPremiumMargin = const EdgeInsets.all(8.0);
const kPromoContainerPadding = const EdgeInsets.only(top: 255.0);
const kSectionListPadding = const EdgeInsets.only(left: 16.0);
const kSectionTextPadding = const EdgeInsets.only(top: 7.0, bottom: 3.0);

const kBackgroundHeight = 500.0;
const kCardHeight = 170.0;
const kPromoContainerHeight = 280.0;
const kHorizontalListHeight = 260.0;

const kSectionContainerSmoothRadius = const BorderRadius.all(Radius.circular(3.0));