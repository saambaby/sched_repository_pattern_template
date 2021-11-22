import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sched/application/auth/bloc/intro/auth_init_bloc.dart';
import 'package:sched/presentation/auth/authentication_page.dart';

import '../core/routes/routes.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthInitBloc, AuthInitState>(
      listener: (context, state){
        state.map(
            initial: (_){},

          authenticated: (_)=>Navigator.of(context).pushReplacementNamed('/auth'),
          unauthenticated: (_)=>Navigator.of(context).pushReplacementNamed('/auth'));

      },
      child: const Scaffold(
        body: Center(
          child: Icon(FontAwesomeIcons.facebookF,size: 25),
        ),
      ),
    );
  }
}
