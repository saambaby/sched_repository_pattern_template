import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sched/application/auth/bloc/auth_bloc.dart';
import 'package:sched/presentation/auth/widgets/sign_in_form.dart';


import '../../injectable.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).primaryColor ,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title:  Text("Sign In", style: Theme.of(context).textTheme.headline1!
            .copyWith(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),),
      ),
      body: BlocProvider(
        create: (BuildContext context)=> getIt<AuthBloc>(),
        child:  const SignInForm() ),
    );
  }
}
