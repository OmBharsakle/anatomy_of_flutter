import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import 'Invoice_Generator.dart';
class Invoice_Print extends StatefulWidget {
  const Invoice_Print({super.key});

  @override
  State<Invoice_Print> createState() => _Invoice_PrintState();
}

class _Invoice_PrintState extends State<Invoice_Print> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Priviwe'),
      ),
      body: PdfPreview(
        build: (format) => GeneratePdf(),
      ),
    );
  }
}
