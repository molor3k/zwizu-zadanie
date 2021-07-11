import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/core/providers/players_info_provider.dart';
import 'package:zwizu_zadanie/core/providers/promo_info_provider.dart';
import 'package:zwizu_zadanie/core/providers/videos_info_provider.dart';
import 'package:zwizu_zadanie/views/main_view.dart';

void main() {
    runApp(
        SoccerApp()
    );
}

class SoccerApp extends StatefulWidget {
    const SoccerApp({
        Key? key
    }) : super(key: key);

    @override
    _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
    PromoInfoProvider? _promoInfoProvider;
    VideosInfoProvider? _videosInfoProvider;
    PlayersInfoProvider? _playersInfoProvider;

    @override
    void initState() {
        super.initState();

        _promoInfoProvider = PromoInfoProvider();
        _promoInfoProvider!.init();

        _videosInfoProvider = VideosInfoProvider();
        _videosInfoProvider!.init();

        _playersInfoProvider = PlayersInfoProvider();
        _playersInfoProvider!.init();
    }
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Soccer App',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: kColors["black"]
            ),
            home: MultiProvider(
                providers: [
                    ChangeNotifierProvider.value(
                        value: _promoInfoProvider!
                    ),
                    ChangeNotifierProvider.value(
                        value: _videosInfoProvider!
                    ),
                    ChangeNotifierProvider.value(
                        value: _playersInfoProvider!
                    ),
                ],
                child: MainView(),
            )
        );
    }
}
