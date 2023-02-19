class BaseTokenResponse {
  String? refreshToken;
  String? accessToken;

  BaseTokenResponse({this.refreshToken, this.accessToken});

  BaseTokenResponse.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refresh-token'];
    accessToken = json['access-token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refresh-token'] = refreshToken;
    data['access-token'] = accessToken;
    return data;
  }
}
