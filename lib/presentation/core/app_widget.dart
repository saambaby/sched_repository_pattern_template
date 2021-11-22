import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sched/application/auth/bloc/intro/auth_init_bloc.dart';
import 'package:sched/injectable.dart';
import 'package:sched/presentation/auth/authentication_page.dart';
import 'package:sched/presentation/core/routes/routes.dart';
import 'package:sched/presentation/core/theme/app_theme.dart';

import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>getIt<AuthInitBloc>()..add( const AuthInitEvent.authCheckRequested()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'sched',
        theme: AppTheme.light(),
        // routeInformationParser: _appRouter.defaultRouteParser(),
        // routeInformationProvider: _appRouter.routeInfoProvider(),
        // routerDelegate: _appRouter.delegate(),
        // builder: (context, router) => router!,
        initialRoute: '/',
        routes:{
         '/': (context) => const Splash(),
         '/auth': (context) => const Authentication(),
      },
      ),
    );
  }
}