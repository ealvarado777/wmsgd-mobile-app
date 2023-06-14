import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PrintPage extends StatefulWidget {
  @override
  _PrintPageState createState() => _PrintPageState();
}

class _PrintPageState extends State<PrintPage> {
  final pw.Document pdf = pw.Document();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Printing Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            pdf.addPage(
              pw.Page(
                build: (pw.Context context) => pw.Center(
                  child:
                      pw.Text('Hello World', style: pw.TextStyle(fontSize: 40)),
                ),
              ),
            );

            await Printing.layoutPdf(
              onLayout: (PdfPageFormat format) async => pdf.save(),
            );
          },
          child: Text('Print Hello World'),
        ),
      ),
    );
  }
}
