class LoginResponseModel {
  final String accessToken;
  final int expiresIn;
  final String tokenType;
  final String refreshToken;
  final String scope;

  LoginResponseModel(
      {this.accessToken,
      this.expiresIn,
      this.tokenType,
      this.refreshToken,
      this.scope});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessToken: json["access_token"] != null ? json["access_token"] : "",
      expiresIn: json["expires_in"] != null ? json["expires_in"] : null,
      tokenType: json["token_type"] != null ? json["token_type"] : "",
      refreshToken: json["refresh_token"] != null ? json["refresh_token"] : "",
      scope: json["scope"] != null ? json["scope"] : "",
    );
  }
}

class LoginRequestModel {
  String username;
  String password;
  String grantType;
  String clientId;
  String clientSecret;
  String scope;

  LoginRequestModel(
      {this.username,
      this.password,
      this.grantType,
      this.clientId,
      this.clientSecret,
      this.scope});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['grant_type'] = "password";
    data['client_id'] = "clientWF";
    data['client_secret'] = "secret";
    data['scope'] = "openid profile offline_access styleApi.full routeApi.full productApi.full organizationApi.full orderApi.full groupApi.full businessApi.full";
    return data;
  }
}
