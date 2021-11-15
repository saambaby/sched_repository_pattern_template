import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sched/application/auth/bloc/auth_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  final snackBar = SnackBar(
                      content: failure.map(
                    cancelledByUser: (_) => Text(
                        'Sign In cancelled by the'
                        ' user',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                    serverError: (_) => Text(
                        'Server Error! Please try '
                        'again later',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                    emailAlreadyInUse: (_) => Text(
                        'Email already in use!'
                        '. Please try another email',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                    invalidEmailAndPasswordCombination: (_) => Text(
                        'Incorrect username or password',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                  ));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, (_) {}));
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                "Sophia",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              const SizedBox(height: 20),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email address",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(
                                color: Colors.black.withOpacity(.3),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                        filled: false,
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black.withOpacity(.4),
                        ),
                        labelText: 'Email',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<AuthBloc>()
                          .state
                          .email
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email Address',
                                orElse: () => null),
                            (_) => null,
                          ),
                    ),
                    const Divider(),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(
                                color: Colors.black.withOpacity(.3),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                        filled: false,
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                            isObscure
                                ? FontAwesomeIcons.eyeSlash
                                : FontAwesomeIcons.eye,
                            color: Colors.black.withOpacity(.4),
                          ),
                        ),
                        labelText: 'Password',
                      ),
                      autocorrect: false,
                      obscureText: isObscure,
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
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.facebookF,
                              size: 23, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.google,
                              size: 23, color: Colors.black),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInWithGooglePressed());
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const CircularProgressIndicator(
                  value: null,
                ),
              ],
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Forgot Password",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            height: 2,
                            fontSize: 14,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  MaterialButton(
                      minWidth: 50,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: state.isSubmitting
                          ? const CircularProgressIndicator(
                              value: null,
                            )
                          : const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
