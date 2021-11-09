import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sched/application/auth/bloc/auth_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isSignIn = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const CircularProgressIndicator(value: null),
                ],
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Theme.of(context).shadowColor,
                    labelStyle: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white, fontSize: 15),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white.withOpacity(.4),
                    ),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<AuthBloc>()
                      .add(AuthEvent.emailChanged(value)),
                  validator: (_) =>
                      context.read<AuthBloc>().state.email.value.fold(
                            (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null),
                            (_) => null,
                          ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Theme.of(context).shadowColor,
                    labelStyle: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white, fontSize: 15),
                    prefixIcon: Icon(Icons.lock_outlined,
                        color: Colors.white.withOpacity(.4)),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<AuthBloc>()
                      .add(AuthEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.read<AuthBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              invalidPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                const SizedBox(height: 20),

                MaterialButton(
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    isSignIn
                        ? context.read<AuthBloc>().add(
                              const AuthEvent
                                  .signInWithEmailAndPasswordPressed(),
                            )
                        : context.read<AuthBloc>().add(
                              const AuthEvent
                                  .signUpWithEmailAndPasswordPressed(),
                            );
                  },
                  child: Text(
                    isSignIn ? "Sign In" : "Sign Up",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ),
                // FlatButton(
                //   onPressed: () {
                //     context.read<AuthBloc>().add(
                //           const AuthEvent.signUpWithEmailAndPasswordPressed(),
                //         );
                //   },
                //   child: const Text('REGISTER'),
                // ),
                const SizedBox(height: 10),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    iconSize: 30,
                    icon: const Icon(Icons.g_mobiledata_outlined,
                        color: Colors.black),
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.signInWithGooglePressed());
                    },
                  ),
                ),
                const Spacer(),

                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        isSignIn
                            ? "Don't have an account yet ?"
                            : "Already have "
                                "an account ?",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isSignIn = !isSignIn;
                          });
                        },
                        child: Text(
                          isSignIn ? "Sign Up" : "Sign In",
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
