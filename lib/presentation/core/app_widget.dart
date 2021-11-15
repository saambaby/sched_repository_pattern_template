
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sched/presentation/auth/authentication_page.dart';
import 'package:sched/presentation/core/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sched',
      theme: AppTheme.light(),
      home:  const Authentication(),
    );
  }
}