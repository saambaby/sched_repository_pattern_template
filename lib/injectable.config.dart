// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i11;
import 'application/auth/bloc/intro/auth_init_bloc.dart' as _i12;
import 'application/note/note_watcher/note_watcher_bloc.dart' as _i10;
import 'domain/auth/interface/auth_interface.dart' as _i5;
import 'domain/notes/interface/i_note_repository.dart' as _i7;
import 'infrastructure/auth/repository/auth_service.dart' as _i6;
import 'infrastructure/core/register_injectable_module.dart' as _i13;
import 'infrastructure/note/repository/note_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.FirebaseAuth>(() => registerModule.firebaseAuth,
      preResolve: true);
  await gh.factoryAsync<_i4.GoogleSignIn>(() => registerModule.googleSignIn,
      preResolve: true);
  gh.lazySingleton<_i5.IAuthService>(() => _i6.AuthService(
      firebaseAuth: get<_i3.FirebaseAuth>(),
      googleSignIn: get<_i4.GoogleSignIn>()));
  gh.lazySingleton<_i7.INoteRepository>(
      () => _i8.NoteRepository(get<_i9.FirebaseFirestore>()));
  gh.factory<_i10.NoteWatcherBloc>(
      () => _i10.NoteWatcherBloc(get<_i7.INoteRepository>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i5.IAuthService>()));
  gh.factory<_i12.AuthInitBloc>(
      () => _i12.AuthInitBloc(get<_i5.IAuthService>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
