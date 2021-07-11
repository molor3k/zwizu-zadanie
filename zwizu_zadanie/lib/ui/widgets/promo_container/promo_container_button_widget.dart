import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/text_styles.dart';
import 'package:zwizu_zadanie/ui/views/details_view.dart';

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
        return Expanded(
            flex: 1,
            child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsView()),
                    );
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                            color: this.isOutlined! ? kColors["black"]! : Colors.transparent,
                            width: 2.0
                        ),
                        color: this.isOutlined! ? Colors.transparent : kColors["black"]
                    ),
                    child: Text(
                        this.text!,
                        textAlign: TextAlign.center,
                        style: this.isOutlined! ? styleButtonOutlined : styleButtonFilled
                    )
                )
            )
        );
    }
}