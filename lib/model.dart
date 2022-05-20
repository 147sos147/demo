class ImageModel {
  final int id;
  final String upload;

  ImageModel(this.id, this.upload) {}

  factory ImageModel.fromJson(json) {
    return ImageModel(json['id'], json['upload']);
  }
}

class ThumbnailModel {
  final int id;
  final String upload;

  ThumbnailModel(this.id, this.upload) {}

  factory ThumbnailModel.fromJson(json) {
    return ThumbnailModel(json['id'], json['upload']);
  }
}

class VideoModel {
  final int id;
  final String upload;

  VideoModel(this.id, this.upload) {}

  factory VideoModel.fromJson(json) {
    return VideoModel(json['id'], json['upload']);
  }
}

class Vocabulary {
  final int id;
  final String text;
  final String description;
  final ImageModel image;

  Vocabulary(this.id, this.text, this.description, this.image);

  factory Vocabulary.fromJson(json) {
    var imageModel = ImageModel.fromJson(json['image']);
    return Vocabulary(
        json['id'], json['text'], json['description'], imageModel);
  }
}

class Paragraph {
  final int id;
  final String title;
  final String description;
  final ImageModel image;

  Paragraph(this.id, this.title, this.description, this.image);

  factory Paragraph.fromJson(json) {
    var imageModel = ImageModel.fromJson(json['image']);
    return Paragraph(
        json['id'], json['title'], json['description'], imageModel);
  }
}

class Conversation {
  final int id;
  final String title;
  final String description;
  final ThumbnailModel thumbnail;
  final VideoModel video;

  Conversation(this.id, this.title, this.description, this.thumbnail,this.video);
  factory Conversation.fromJson(json) {
    var thumbnailModel = ThumbnailModel.fromJson(json['thumbnail']);
    var videoModel = VideoModel.fromJson(json['video']);
    return Conversation(
        json['id'], json['title'], json['description'], thumbnailModel, videoModel);
  }
}

class CourseModel {
  final String name;
  final String description;
  final ImageModel image;
  final List<Vocabulary> vocabulary;
  final List<Paragraph> paragraph;
  final List<Conversation> conversation;


  CourseModel(this.name, this.description, this.image,
      this.vocabulary,this.paragraph,this.conversation,) {}

  factory CourseModel.fromJson(json) {
    var imageModel = ImageModel.fromJson(json['image']);
    print("-----");
    var vocabularyModel = (json['vocabulary'] as List).map((data) => Vocabulary.fromJson(data)).toList();
    var paragraphModel = (json['paragraph'] as List).map((data) => Paragraph.fromJson(data)).toList();
    var conversationModel = (json['conversation'] as List).map((data) => Conversation.fromJson(data)).toList();
    return CourseModel(
        json['name'], json['description'], imageModel,
        vocabularyModel,paragraphModel,conversationModel,);
  }
}
