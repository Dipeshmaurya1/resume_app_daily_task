

import 'package:flutter/material.dart';
// import 'package:resume_app_daily_task/Component/Home/StatusBar.dart';

import '../Component/Generate_pdf/Invoice_Generater.dart';
import '../Component/Generate_pdf/PDF.dart';
import '../Component/Home/Google/GmailScreen.dart';
// import '../Component/Home/ID_Card_Registration_Form/Dynamic_Text_Field.dart';
import '../Component/Home/ID_Card_Registration_Form/RegistrationFrom.dart';
import '../Component/Home/ImagePicker/Image_Picker.dart';
import '../Component/Home/LoginPages/Entry_Page.dart';
import '../Component/Home/Gmail_Drawer/GmailDrawer.dart';
import '../Component/Home/LoginPages/Login_Page.dart';
import '../Component/Home/Status_Bar.dart';

class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes=
  {
    // '/':(context)=>StatusBar(),
    // '/':(context)=>GmailDrawer(),
    // '/':(context)=>EntryPage(),
    // '/login':(context)=>LoginPage(),
    '/':(context)=>InvoiceGenerator(),
    '/pdf':(context)=>PdfPage(),
  };
}