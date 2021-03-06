import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/core/models/player_model.dart';
import 'package:zwizu_zadanie/core/services/players_info_service.dart';

class PlayersInfoProvider extends ChangeNotifier {
    PlayersInfoService? _service;
    List<PlayerModel>? _playersList;

    List<PlayerModel> get players => _playersList!;

    init() {
        _service = new PlayersInfoService();
        _playersList = _service!.fetchPlayers();
    }
}