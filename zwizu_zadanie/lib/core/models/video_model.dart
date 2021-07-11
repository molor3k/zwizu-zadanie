class VideoModel{
    String? imageURL;
    String? category;
    String? name;
    bool? isPremium;

    VideoModel(
        this.imageURL,
        this.category,
        this.name,
        {this.isPremium = false}
    );
}