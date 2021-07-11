import 'package:zwizu_zadanie/backend/models/section_list_element_model.dart';

class VideoModel implements SectionListElementModel {
    String? imageURL;
    String? topText;
    String? bottomText;
    bool? isPremium;
    bool? isPlaying;

    VideoModel(
        this.imageURL,
        this.topText,
        this.bottomText,
        this.isPremium,
        this.isPlaying
    );
}