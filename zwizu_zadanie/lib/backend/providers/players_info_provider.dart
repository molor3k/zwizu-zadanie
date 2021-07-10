import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/player_model.dart';

class PlayersInfoProvider extends ChangeNotifier {
    List<PlayerModel> playersList = [
        PlayerModel(
            "Jon Doe",
            "CHAMPION"
        ),
        PlayerModel(
            "Jack Doe",
            "1. MISTO"
        ),
        PlayerModel(
            "John Doe",
            "2. MISTO"
        ),
    ]; 

    List<PlayerModel> get players => playersList;
}