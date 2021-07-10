import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/ui/widgets/section_card_image_widget.dart';

class PlayerCard extends StatelessWidget {
    const PlayerCard({ 
        Key? key 
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                SectionCardImage(
                    image: "assets/images/player_small.jpg"
                ),
                Text("John Doe"),
                Text("Champion"),
            ],
        );
    }
}