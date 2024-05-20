import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'Invoice_pdf.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Invoice_Generator extends StatefulWidget {
  const Invoice_Generator({super.key});

  @override
  State<Invoice_Generator> createState() => _Invoice_GeneratorState();
}

class _Invoice_GeneratorState extends State<Invoice_Generator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Generator'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Invoice_Print(),));

          }, icon: Icon(Icons.picture_as_pdf_rounded,size: 30,))
        ],
      ),
      body: Column(
        children: [
          ...List.generate(InvoiceList.length, (index) => ListTile(
            title: Text('${InvoiceList[index].name}',style: TextStyle(
              fontSize: 20,
            ),),
            subtitle: Text('${InvoiceList[index].category}'),
            trailing: Text('${InvoiceList[index].price}',style: TextStyle(
              fontSize: 20,
            ),),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            InvoiceList.add(InvoiceModel(name: 'Hp',category: 'Laptop',price: '30000/-'),);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<InvoiceModel> InvoiceList = [
  InvoiceModel(name: 'Hp',category: 'Laptop',price: '30000/-'),
];

class InvoiceModel
{
  String? name;
  String? price;
  String? category;
  InvoiceModel({this.name,this.category,this.price});
}

Future<Uint8List> GeneratePdf()
{
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            ...List.generate(InvoiceList.length, (index) => pw.Container(
              margin: pw.EdgeInsets.all(20),
              child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('${InvoiceList[0].name}',style: pw.TextStyle(fontSize: 30,)),
                          pw.Text('${InvoiceList[0].category}',style: pw.TextStyle(fontSize: 20)),
                        ]
                    ),
                    pw.Text('${InvoiceList[0].price}',style: pw.TextStyle(fontSize: 30)),
                  ]
              ),
            ))
          ]
        );
      }));

  return pdf.save();
}