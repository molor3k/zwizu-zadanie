import 'package:zwizu_zadanie/backend/models/tournament_model.dart';

class PromoInfoService {
    TournamentModel _currentTournament = TournamentModel(
        "TURNAJ 22",
        DateTime(2022, 7, 9, 20, 0)
    );

    String? get tournamentName => _currentTournament.tournamentName;
    DateTime? get tournamentDate => _currentTournament.tournamentDate;
}