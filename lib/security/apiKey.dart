class ApiKey {
  final String value;
  ApiKey({this.value = ""});
  factory ApiKey.fromJson(Map<String, dynamic> jsonMap, String name) {
    return new ApiKey(value: jsonMap[name]);
  }
}