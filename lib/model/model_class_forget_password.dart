class Contain {
  Contain({
    required this.success,
    required this.message,
    this.data,
  });
  late final bool success;
  late final String message;
  late final Null data;

  Contain.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    data = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }
}