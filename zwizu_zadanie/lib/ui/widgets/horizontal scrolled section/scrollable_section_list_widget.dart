import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/constants.dart';

class ScrollableSectionList extends StatelessWidget {
    final Widget? card;
    const ScrollableSectionList({
        Key? key,
        @required this.card
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 200,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                ),
                itemBuilder: (context, index) {
                    return Column(
                        children: [
                            this.card!,
                            Text("John Doe"),
                            Text("Champion"),
                        ],
                    );
                }
            )
        );
    }
}