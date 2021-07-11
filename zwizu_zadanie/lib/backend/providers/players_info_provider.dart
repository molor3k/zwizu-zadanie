import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/section_list_element_model.dart';
import 'package:zwizu_zadanie/backend/services/players_info_service.dart';

class PlayersInfoProvider extends ChangeNotifier {
    PlayersInfoService? _service;
    List<SectionListElementModel>? _playersList;

    List<SectionListElementModel> get players => _playersList!;

    init() {
        _service = new PlayersInfoService();
        _playersList = _service!.fetchPlayers();
    }
}