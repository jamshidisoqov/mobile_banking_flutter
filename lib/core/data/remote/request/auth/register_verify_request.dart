class RegisterVerifyRequest {
  String? token;
  String? code;

  RegisterVerifyRequest({this.token, this.code});

  RegisterVerifyRequest.fromJson(Map<String, dynamic> json) {
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
