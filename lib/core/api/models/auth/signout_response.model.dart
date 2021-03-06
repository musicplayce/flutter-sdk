class SignOutResponse {
  String iss;
  String token;
  String refreshToken;

  SignOutResponse({this.iss, this.token, this.refreshToken});

  SignOutResponse.fromJson(Map<String, dynamic> json) {
    iss = json['iss'];
    token = json['token'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iss'] = this.iss;
    data['token'] = this.token;
    data['refresh_token'] = this.refreshToken;
    return data;
  }
}
