import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/core/models/video_model.dart';
import 'package:zwizu_zadanie/core/services/videos_info_service.dart';

class VideosInfoProvider extends ChangeNotifier {
    VideosInfoService? _service;
    List<VideoModel>? _videosList;

    List<VideoModel> get videos => _videosList!;

    init() {
        _service = new VideosInfoService();
        _videosList = _service!.fetchVideos();
    }
}