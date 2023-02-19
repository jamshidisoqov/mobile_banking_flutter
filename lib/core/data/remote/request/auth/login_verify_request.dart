class LoginVerifyRequest {
  String? token;
  String? code;

  LoginVerifyRequest({this.token, this.code});

  LoginVerifyRequest.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['code'] = code;
    return data;
  }
}
