import 'package:dio/dio.dart';
import 'package:jig_racing/core/constants/constants.dart';
import 'package:jig_racing/di/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
   var accessToken = locator.get<SharedPreferences>().getString(AppConstants.token);

    if (accessToken != null) {
    //   var expiration = await TokenRepository().getAccessTokenRemainingTime();
    //
    //   if (expiration.inSeconds < 60) {
    //     dio.interceptors.requestLock.lock();
    //
    //     // Call the refresh endpoint to get a new token
    //     await UserService()
    //         .refresh()
    //         .then((response) async {
    //       await TokenRepository().persistAccessToken(response.accessToken);
    //       accessToken = response.accessToken;
    //     }).catchError((error, stackTrace) {
    //       handler.reject(error, true);
    //     }).whenComplete(() => dio.interceptors.requestLock.unlock());
    //   }
    //
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return handler.next(options);
  }
}