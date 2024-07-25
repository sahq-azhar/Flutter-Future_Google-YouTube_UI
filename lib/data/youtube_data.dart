class YoutubeModel {
  final String? title;
  final String? description;
  final String? thumbNail;
  final String? publishedTime;
  final String? channelTitle;
  final String? channelAvatar;
  final String? viewCount;
  final String? likeCount;
  final String? dislikeCount;

  YoutubeModel({
    this.title,
    this.description,
    this.thumbNail,
    this.publishedTime,
    this.channelTitle,
    this.channelAvatar,
    this.viewCount,
    this.likeCount,
    this.dislikeCount,
  });
}

List<YoutubeModel> youtubeData = [
  YoutubeModel(
    title: "Future Youtube UI-Concept by SAHQ",
    thumbNail:
        "https://i.ibb.co/BL8gtCj/main-thubnail-fnal-2.jpg",
    publishedTime: "10 hour ago",
    channelTitle: "SAHQ",
    channelAvatar: "https://i.ibb.co/x3M3fgY/sahqchannel.png",
    viewCount: "1B views", description: '', likeCount: '', dislikeCount: '',
  ),
  YoutubeModel(
    title: "Google reacts to SAHQ-YouTube UI concept",
    thumbNail:
        "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
    publishedTime: "15 hours ago",
    channelTitle: "Google",
    channelAvatar:
        "https://www.freepngimg.com/thumb/google/67060-play-photos-search-google-account-png-file-hd.png",
    viewCount: "10M views", description: '', likeCount: '', dislikeCount: '',
  ),
  YoutubeModel(
    title: "YouTube thinking of changing it's UI",
    thumbNail:
        "https://mcdn.wallpapersafari.com/medium/0/24/TLj7pC.jpg",
    publishedTime: "13 hours ago",
    channelTitle: "YouTube",
    channelAvatar:
        "https://i.ibb.co/cCRTVDN/logoytchannel.png",
    viewCount: "53M views", description: '', likeCount: '', dislikeCount: '',
  ),
  YoutubeModel(
    title: "From paper to code- Youtube UI-Concept by SAHQ",
    thumbNail:
    "https://i.ibb.co/D91D9Wt/write2code.jpg",
    publishedTime: "5 hour ago",
    channelTitle: "SAHQ",
    channelAvatar: "https://i.ibb.co/x3M3fgY/sahqchannel.png",
    viewCount: "10M views", description: '', likeCount: '', dislikeCount: '',
  ),
  YoutubeModel(
    title: "Google reacts to SAHQ-YouTube UI concept",
    thumbNail:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQf9FfGLhwwIpq3QN0DQ69Pv5ZWej-XGAgvhg&usqp=CAU",
    publishedTime: "15 hours ago",
    channelTitle: "Google",
    channelAvatar:
    "https://www.freepngimg.com/thumb/google/67060-play-photos-search-google-account-png-file-hd.png",
    viewCount: "10M views", description: '', likeCount: '', dislikeCount: '',
  ),
  YoutubeModel(
    title: "Future Youtube UI-Concept by SAHQ",
    thumbNail:
    "https://w0.peakpx.com/wallpaper/274/278/HD-wallpaper-forest-patrol-orange-pink-plum.jpg",
    publishedTime: "13 hours ago",
    channelTitle: "YouTube",
    channelAvatar:
    "https://i.ibb.co/cCRTVDN/logoytchannel.png",
    viewCount: "53M views", description: '', likeCount: '', dislikeCount: '',
  ),
];
