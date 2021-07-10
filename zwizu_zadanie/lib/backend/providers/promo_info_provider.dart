import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/countdown_model.dart';
import 'package:zwizu_zadanie/backend/models/tournament_model.dart';

class PromoInfoProvider extends ChangeNotifier {
    CountdownModel? timeUntilTournament = CountdownModel(0, 0, 0, 0);
    TournamentModel currentTournament = TournamentModel(
        "TURNAJ 22",
        DateTime(2022, 7, 9, 20, 0)
    );

    String? get tournamentName => currentTournament.tournamentName;
    DateTime? get tournamentDate => currentTournament.tournamentDate;
    String? get tournamentDateString => dateToString(this.tournamentDate!);

    init() {
        Timer.periodic(Duration(seconds: 1), (_) {
            updateCountdownTimer();
        });
    }

    dateToString(DateTime date) {
        List<String?> weekdays = ["", "Po", "Út", "St", "Čt", "Pá", "So", "Ne"];
        String date = "";

        date += "${weekdays[tournamentDate!.weekday]} ";
        date += "${tournamentDate!.day}.";
        date += "${tournamentDate!.month}.";
        date += "${tournamentDate!.year} v ";
        date += "${tournamentDate!.hour}:";

        if (tournamentDate!.minute < 10) {
            date += "0";
        }
        date += "${tournamentDate!.minute}";

        return date;
    }

    updateCountdownTimer() {
        DateTime currentDateTime = DateTime.now();
        Duration duration = tournamentDate!.difference(currentDateTime);

        timeUntilTournament = CountdownModel(
            duration.inDays,
            Duration(hours: duration.inHours - (duration.inDays * 24)).inHours,
            Duration(minutes: duration.inMinutes - (duration.inHours * 60)).inMinutes,
            Duration(seconds: duration.inSeconds - (duration.inMinutes * 60)).inSeconds
        );

        notifyListeners();
    }
}