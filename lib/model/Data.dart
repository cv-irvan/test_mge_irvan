class User {
  int albumId;
  int id;
  String title;
  String thumbnailUrl;

  User(int id, String name, String email) {
    this.albumId = albumId;
    this.id = id;
    this.title = title;
    this.thumbnailUrl = thumbnailUrl;
  }

  User.fromJson(Map json)
      : albumId = json['albumId'],
        id = json['id'],
        title = json['title'],
        thumbnailUrl = json['thumbnailUrl'];

  Map toJson() {
    return {'albumId':albumId, 'id': id, 'title': title, 'thumbnailUrl': thumbnailUrl};
  }
}