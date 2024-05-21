// import 'dart:js_interop';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Component/Home/ID_Card_Registration_Form/List_of_ID_Card.dart';

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({super.key});

  @override
  State<InvoiceGenerator> createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/pdf');
          },
          child: Icon(Icons.picture_as_pdf_outlined),
        ),
        body: Column(
          children: [
            ...List.generate(
              invoiceDetail.length,
              (index) => ListTile(
                title: Text('${invoiceDetail[index].name}'),
                subtitle: Text('${invoiceDetail[index].category}'),
                trailing: Text('${invoiceDetail[index].price}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<InvoiceModel> invoiceDetail = [
  InvoiceModel(name: 'Dipesh', category: 'Animal', price: '0.0000000'),
  InvoiceModel(name: 'Yash', category: 'Animal', price: '0.0000000'),
  InvoiceModel(name: 'Mehul', category: 'Animal', price: '0.0000000'),
];

class InvoiceModel {
  String? name;
  String? category;
  String? price;

  InvoiceModel({this.name, this.category, this.price});
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (context) => pw.Column(children: [
      ...List.generate(
          invoiceDetail.length,
          (index) => pw.Column(
            children: [
              pw.Text(
                  '${invoiceDetail[index].name}${invoiceDetail[index].category}${invoiceDetail[index].price}',
                  style: pw.TextStyle(
                    fontSize: 25,
                    color: PdfColors.black,
                  ))

            ]
          ))
    ]),
  ));
  return pdf.save();
}
