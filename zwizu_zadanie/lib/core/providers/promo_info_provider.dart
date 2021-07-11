import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/core/models/countdown_model.dart';
import 'package:zwizu_zadanie/core/services/promo_info_service.dart';

class PromoInfoProvider extends ChangeNotifier {
    PromoInfoService? _service;
    CountdownModel? _timeUntilTournament = CountdownModel(0, 0, 0, 0);

    String? get tournamentName => _service!.tournamentName;
    DateTime? get tournamentDate => _service!.tournamentDate;
    String? get tournamentDateString => dateToString(tournamentDate!);
    CountdownModel? get timeUntilTournament => _timeUntilTournament;

    init() {
        _service = new PromoInfoService();

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

        _timeUntilTournament = CountdownModel(
            duration.inDays,
            Duration(hours: duration.inHours - (duration.inDays * 24)).inHours,
            Duration(minutes: duration.inMinutes - (duration.inHours * 60)).inMinutes,
            Duration(seconds: duration.inSeconds - (duration.inMinutes * 60)).inSeconds
        );

        notifyListeners();
    }
}