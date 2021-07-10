import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwizu_zadanie/backend/providers/players_info_provider.dart';
import 'package:zwizu_zadanie/backend/providers/promo_info_provider.dart';
import 'package:zwizu_zadanie/backend/providers/video_info_provider.dart';
import 'package:zwizu_zadanie/constants.dart';
import 'package:zwizu_zadanie/ui/views/main_view.dart';

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

    @override
    void initState() {
        super.initState();
        _promoInfoProvider = PromoInfoProvider();
        _promoInfoProvider!.init();
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
                    ChangeNotifierProvider(
                        create: (_) => VideoInfoProvider()
                    ),
                    ChangeNotifierProvider(
                        create: (_) => PlayersInfoProvider()
                    ),
                ],
                child: MainView(),
            )
        );
    }
}
