

import 'package:flutter/material.dart';
// import 'package:resume_app_daily_task/Component/Home/StatusBar.dart';

import '../Component/Home/LoginPages/Entry_Page.dart';
import '../Component/Home/LoginPages/GmailDrawer.dart';
import '../Component/Home/LoginPages/Login_Page.dart';
import '../Component/Home/Status_Bar.dart';

class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes=
  {
    // '/':(context)=>StatusBar(),
    // '/':(context)=>GmailDrawer(),
    '/':(context)=>EntryPage(),
    '/login':(context)=>LoginPage(),
  };
}