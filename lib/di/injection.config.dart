// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../core/data/api/api.dart' as _i3;
import '../features/auth/cubit/auth_cubit.dart' as _i4;
import '../routers/app_routers.dart' as _i6;
import 'injectionModule.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<_i3.Api>(() => _i3.Api());
  gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
  await gh.singletonAsync<_i5.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i6.AppRouters>(() => _i6.AppRouters(get<_i4.AuthCubit>()));
  return get;
}

class _$InjectionModule extends _i7.InjectionModule {}
