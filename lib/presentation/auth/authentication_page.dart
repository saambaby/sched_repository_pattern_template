import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sched/application/auth/bloc/auth_bloc.dart';
import 'package:sched/presentation/auth/widgets/sign_in_page.dart';
import 'package:sched/presentation/auth/widgets/sign_up_page.dart';

import '../../injectable.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size= MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 30,
            backgroundColor: Colors.white,
            bottom: TabBar(padding:  EdgeInsets.only(left: _size.width*.45),
              labelPadding: const EdgeInsets.symmetric(vertical: 5),
              indicatorWeight: 1.5,
              labelStyle: Theme.of(context).textTheme.headline6!.copyWith(
                    height: 2,
                    fontSize: 15.5,
                    fontWeight: FontWeight.w800,
                  ),
              unselectedLabelStyle:
                  Theme.of(context).textTheme.headline6!.copyWith(
                        height: 2,
                    fontSize: 15.5,
                        fontWeight: FontWeight.w600,
                      ),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  text: "Sign In",
                ),
                Tab(
                  text: "Sign Up",
                ),
              ],
            ),
          ),
          body: BlocProvider(
            create: (BuildContext context) => getIt<AuthBloc>(),
            child: TabBarView(
              children: <Widget>[
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 50, left: 25,right: 25),
                  child: const SignInPage()
                ),

                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 50, left: 25,right: 25),
                  child: const Center(
                    child:SignUp()
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
