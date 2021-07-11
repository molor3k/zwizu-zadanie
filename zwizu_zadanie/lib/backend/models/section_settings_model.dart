import 'package:flutter/material.dart';

class SectionSettingsModel {
    CrossAxisAlignment? crossAxis;
    TextStyle? topTextStyle;
    TextStyle? bottomTextStyle;

    SectionSettingsModel(
        this.crossAxis,
        this.topTextStyle,
        this.bottomTextStyle
    );
}