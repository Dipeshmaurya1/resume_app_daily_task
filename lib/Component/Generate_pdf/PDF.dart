import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/Component/Generate_pdf/Invoice_Generater.dart';
class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PdfPreview(build: (format) => generatePdf(),),
    ));
  }
}
