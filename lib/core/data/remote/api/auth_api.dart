import 'package:dio/dio.dart';
import 'package:mobile_banking_flutter/core/data/remote/base_models.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/login_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/login_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/register_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/register_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/resend_verify_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/request/auth/update_token_request.dart';
import 'package:mobile_banking_flutter/core/data/remote/response/auth/base_token_response.dart';
import 'package:mobile_banking_flutter/core/data/remote/response/auth/token_response.dart';
import 'package:mobile_banking_flutter/di/database_module.dart';

class AuthApi {
  var dio = getIt.get<Dio>();

  Future<BaseResponse<TokenResponse>> registerUser(
    RegisterRequest registerRequest,
  ) async {
    BaseResponse<TokenResponse> response = Message("send request");
    try {
      var result =
          await dio.post("/auth/sign-up", data: registerRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = TokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<TokenResponse>> loginUser(
    LoginRequest loginRequest,
  ) async {
    BaseResponse<TokenResponse> response = Message("send request");
    try {
      var result = await dio.post("/auth/sign-in", data: loginRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = TokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<BaseTokenResponse>> registerVerify(
    RegisterVerifyRequest registerVerifyRequest,
  ) async {
    BaseResponse<BaseTokenResponse> response = Message("");
    try {
      var result = await dio.post("/auth/sign-up/verify",
          data: registerVerifyRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = BaseTokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<BaseTokenResponse>> loginVerify(
    LoginVerifyRequest loginVerifyRequest,
  ) async {
    BaseResponse<BaseTokenResponse> response = Message("");
    try {
      var result = await dio.post("/auth/sign-in/verify",
          data: loginVerifyRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = BaseTokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<BaseTokenResponse>> updateToken(
    UpdateTokenRequest updateTokenRequest,
  ) async {
    BaseResponse<BaseTokenResponse> response = Message("");
    try {
      var result = await dio.post("/auth/update-token",
          data: updateTokenRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = BaseTokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<TokenResponse>> resendVerifyRegister(
    ResendTokenRequest resendTokenRequest,
  ) async {
    BaseResponse<TokenResponse> response = Message("");
    try {
      var result = await dio.post("/auth/sign-up/resend",
          data: resendTokenRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = TokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }

  Future<BaseResponse<TokenResponse>> resendVerifyLogin(
    ResendTokenRequest resendTokenRequest,
  ) async {
    BaseResponse<TokenResponse> response = Message("");
    try {
      var result = await dio.post("/auth/sign-in/resend",
          data: resendTokenRequest.toJson());
      int? code = result.statusCode ?? 200;
      if (code >= 200 && code < 300) {
        var token = TokenResponse.fromJson(result.data);
        response = Success(token);
      } else if (code >= 400 && code < 500) {
        response = Error(Exception(result.statusMessage ?? ""));
      } else if (code >= 500) {
        response = ServerError(Exception(result.statusMessage ?? ""));
      } else {
        response = Message("Unknown exception");
      }
    } catch (e) {
      response = Error(Exception(e));
    }
    return response;
  }
}
