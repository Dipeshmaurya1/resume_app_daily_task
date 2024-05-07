import 'package:flutter/material.dart';
// import 'package:resume_app_daily_task/Component/Home/StatusBar.dart';

import '../Component/Home/Status_Bar.dart';

class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes=
  {
    '/':(context)=>HomeScreen(),
  };
}