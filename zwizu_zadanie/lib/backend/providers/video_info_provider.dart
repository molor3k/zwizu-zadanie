import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/backend/models/video_model.dart';
import 'package:zwizu_zadanie/backend/services/video_info_service.dart';

class VideoInfoProvider extends ChangeNotifier {
    VideoInfoService? _service;
    List<VideoModel>? _videosList;

    List<VideoModel> get videos => _videosList!;

    init() {
        _service = new VideoInfoService();
        _videosList = _service!.fetchVideos();
    }
}