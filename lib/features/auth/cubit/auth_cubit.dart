import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:jig_racing/core/constants/constants.dart';
import 'package:jig_racing/di/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final _sharedPreferences = locator.get<SharedPreferences>();

  AuthCubit() : super(const AuthState(AuthStateEnum.unknown)) {
    _sharedPreferences.getString(AppConstants.token) != null
        ? emit(const AuthState(AuthStateEnum.authenticated))
        : emit(const AuthState(AuthStateEnum.unauthenticated));
  }

  void saveToken({required String token, String? refreshToken,}) {
    //todo temp
    _sharedPreferences.setString(AppConstants.token, "test");
    _sharedPreferences.setString(AppConstants.refreshToken, refreshToken ?? "");
    emit(const AuthState(AuthStateEnum.authenticated));
  }

  void logout() async{
    await _sharedPreferences.clear();
    emit(const AuthState(AuthStateEnum.unauthenticated));
  }
}
