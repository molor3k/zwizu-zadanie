import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class PromoContainerButton extends StatelessWidget {
    final String? text;
    final bool? isOutlined;
    const PromoContainerButton({ 
        Key? key,
        @required this.text,
        @required this.isOutlined
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final styleBuy = TextStyle(
            fontFamily: "Silka",
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: this.isOutlined! ? kColors["black"] : kColors["yellow"]
        );

        return Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                        color: this.isOutlined! ? kColors["black"]! : Colors.transparent
                    ),
                    color: this.isOutlined! ? Colors.transparent : kColors["black"]
                ),
                child: Text(
                    this.text!,
                    textAlign: TextAlign.center,
                    style: styleBuy
                )
            )
        );
    }
}