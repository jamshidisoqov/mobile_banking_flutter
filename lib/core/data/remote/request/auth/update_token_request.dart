class UpdateTokenRequest {
  String? refreshToken;

  UpdateTokenRequest({this.refreshToken});

  UpdateTokenRequest.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refresh-token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refresh-token'] = refreshToken;
    return data;
  }
}
