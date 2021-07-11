import 'package:zwizu_zadanie/backend/models/section_list_element_model.dart';

class PlayersInfoService {
    List<SectionListElementModel> _playersList = [
        SectionListElementModel(
            "assets/images/player_small.jpg",
            "Jon Doe",
            "CHAMPION"
        ),
        SectionListElementModel(
            "assets/images/player_small.jpg",
            "Jack Doe",
            "1. MISTO"
        ),
        SectionListElementModel(
            "assets/images/player_small.jpg",
            "John Doe",
            "2. MISTO"
        ),
    ]; 

    List<SectionListElementModel> fetchPlayers() {
        return _playersList;
    }
}