class PlaceholderModel {
  int? userId, id;
  String? title, body;

  PlaceholderModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PlaceholderModel.fromModel(Map m1) {
    return PlaceholderModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
      body: m1['body'],
    );
  }
}
