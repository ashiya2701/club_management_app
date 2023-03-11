class Session{
  String? title;
  int? isCompleted;

  Session(String title,int isStarted){
    this.title=title;
    this.isCompleted=isStarted;

  }
  Session.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    isCompleted = json['isCompleted'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['isCompleted'] = isCompleted;

    return data;
  }
}