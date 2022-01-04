import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ItemPersonalInfo extends pw.StatelessWidget {
  final name;
  final place;
  final phoneNumber;
  final emailAddress;
  final image;
  final emailIcon;
  final phoneIcon;
  final whatsAppIcon;

  ItemPersonalInfo(
      {this.place, this.name, this.image,this.phoneNumber, this.emailAddress,this.emailIcon, this.phoneIcon, this.whatsAppIcon});


  @override
  pw.Widget build(context) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      mainAxisAlignment: pw.MainAxisAlignment.center,
      children: [
        pw.Container(
          height: 70,
          width: 100,
          color: PdfColor.fromHex("#f0f12f"),
          // child: pw.Image(PdfImage.),
          child: pw.Image(image)
        ),
        pw.Spacer(),
        pw.Column(
          children: [
            pw.Center(
              child: pw.Text(
                name,
                style: pw.Theme.of(context)
                    .header1
                    .copyWith(fontWeight: pw.FontWeight.bold),
              ),
            ),
            pw.Text(place),
          ],
        ),
        pw.Spacer(),
        pw.Container(
            // height: 80,
            padding: const pw.EdgeInsets.all(24),
            // width: 100,
            // color: PdfColor.fromHex("#f0f12f"),
            child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 4),
                    child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Image(phoneIcon,height: 20,width: 20),
                          pw.SizedBox(width: 4),
                          pw.Text(phoneNumber),
                        ]
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 4),
                    child:  pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Image(whatsAppIcon,height: 20,width: 20),
                          pw.SizedBox(width: 4),
                          pw.Text(phoneNumber),
                        ]
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 4),
                    child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Image(emailIcon,height: 20,width: 20),
                          pw.SizedBox(width: 4),
                          pw.Text(emailAddress),
                        ]
                    ),
                  ),


                  // pw.Text(phoneNumber),
                  // pw.Text(emailAddress),
                ])),
      ],
    );
  }
}
