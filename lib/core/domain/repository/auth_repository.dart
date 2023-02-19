import 'package:mobile_banking_flutter/core/data/remote/api/auth_api.dart';
import 'package:mobile_banking_flutter/core/data/remote/base_models.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/login_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/login_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/register_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/register_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/resend_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/update_token_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/response/auth/base_token_response.dart';
import 'package:mobile_banking_flutter/core/data/remote/response/auth/token_response.dart';

class AuthRepository {
  AuthApi authApi;

  AuthRepository(this.authApi);

  Future<BaseResponse<TokenResponse>> registerUser(
          RegisterRequest registerRequest) =>
      authApi.registerUser(registerRequest);

  Future<BaseResponse<TokenResponse>> loginUser(LoginRequest loginRequest) =>
      authApi.loginUser(loginRequest);

  Future<BaseResponse<BaseTokenResponse>> registerVerify(
    RegisterVerifyRequest registerVerifyRequest,
  ) =>
      authApi.registerVerify(registerVerifyRequest);

  Future<BaseResponse<BaseTokenResponse>> loginVerify(
    LoginVerifyRequest loginVerifyRequest,
  ) =>
      authApi.loginVerify(loginVerifyRequest);

  Future<BaseResponse<BaseTokenResponse>> updateToken(
    UpdateTokenRequest updateTokenRequest,
  ) =>
      authApi.updateToken(updateTokenRequest);

  Future<BaseResponse<TokenResponse>> resendVerifyRegister(
    ResendTokenRequest resendTokenRequest,
  ) =>
      authApi.resendVerifyRegister(resendTokenRequest);

  Future<BaseResponse<TokenResponse>> resendVerifyLogin(
    ResendTokenRequest resendTokenRequest,
  ) =>
      authApi.resendVerifyLogin(resendTokenRequest);
}
