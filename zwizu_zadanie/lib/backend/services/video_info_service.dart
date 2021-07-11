import 'package:zwizu_zadanie/backend/models/video_model.dart';

class VideoInfoService {
    List<VideoModel> _videosList = [
        VideoModel(
            "assets/images/tournament_small.jpg",
            "TURNAJ 20",
            "Souboj o trůn",
            isPremium: true, 
        ),
        VideoModel(
            "assets/images/tournament_small.jpg",
            "HATTRICK",
            "V kůži bojovnikov \nFISHER",
            isPremium: false, 
        )
    ]; 

    List<VideoModel> fetchVideos() {
        return _videosList;
    }
}