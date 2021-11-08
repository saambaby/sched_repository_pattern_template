// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../application/auth/bloc/auth_bloc.dart' as _i3;
import '../domain/auth/i_auth_service.dart' as _i4;
import '../infrastructure/auth/auth_service.dart' as _i7;
import '../infrastructure/core/register_injectable_module.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.IAuthService>()));
  await gh.factoryAsync<_i5.FirebaseAuth>(() => registerModule.firebaseAuth,
      preResolve: true);
  await gh.factoryAsync<_i6.GoogleSignIn>(() => registerModule.googleSignIn,
      preResolve: true);
  gh.lazySingleton<_i7.AuthService>(() => _i7.AuthService(
      firebaseAuth: get<_i5.FirebaseAuth>(),
      googleSignIn: get<_i6.GoogleSignIn>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
