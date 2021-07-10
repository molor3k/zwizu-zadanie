import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/video_model.dart';

class VideoInfoProvider extends ChangeNotifier {
    List<VideoModel> videosList = [
        VideoModel(
            "TURNAJ 20",
            "Souboj o trůn"
        ),
        VideoModel(
            "HATTRICK",
            "V kůži bojovnikov \nFISHER"
        )
    ]; 

    List<VideoModel> get videos => videosList;
}