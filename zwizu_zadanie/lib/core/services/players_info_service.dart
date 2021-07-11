
import 'package:zwizu_zadanie/core/models/player_model.dart';

class PlayersInfoService {
    List<PlayerModel> _playersList = [
        PlayerModel(
            "assets/images/player_small.jpg",
            "Jon Doe",
            "CHAMPION"
        ),
        PlayerModel(
            "assets/images/player_small.jpg",
            "Jack Doe",
            "1. MISTO"
        ),
        PlayerModel(
            "assets/images/player_small.jpg",
            "John Doe",
            "2. MISTO"
        ),
    ]; 

    List<PlayerModel> fetchPlayers() {
        return _playersList;
    }
}