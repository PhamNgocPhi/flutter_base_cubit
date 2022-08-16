import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jig_racing/app_environment.dart';
import 'package:jig_racing/core/data/api/app_interceptor.dart';

@lazySingleton
class Api {
  final dio = createDio(false);
  final tokenDio = createDio(true);

  Api._internal();

  static final _singleton = Api._internal();

  @factoryMethod
  factory Api() => _singleton;

  static Dio createDio(bool isWithCredential) {
    var dio = Dio(BaseOptions(
      baseUrl: AppEnvironment.current.baseUrl,
      receiveTimeout: AppEnvironment.current.receiveTimeout,
      connectTimeout: AppEnvironment.current.connectTimeout,
      sendTimeout: AppEnvironment.current.sendTimeout,
    ));
    if (isWithCredential) {
      dio.interceptors.add(AppInterceptors(dio));
    }
    if (AppEnvironment.current.environmentType != EnvironmentType.production) {
      dio.interceptors.addAll({
        LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
          requestBody: true,
        )
      });
    }

    return dio;
  }
}
