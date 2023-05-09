class Tokens {
  Tokens({this.refresh, this.access});
  Tokens.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'] as String?;
    access = json['access'] as String?;
  }
  String? refresh;
  String? access;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['refresh'] = refresh;
    data['access'] = access;
    return data;
  }
}