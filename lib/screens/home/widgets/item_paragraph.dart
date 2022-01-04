import 'package:pdf/widgets.dart' as pw;

class ItemParagraph extends pw.StatelessWidget {
  final text;
  final bool isBold;

  ItemParagraph({this.text,this.isBold=false});

  @override
  pw.Widget build(context) {
    return pw.Paragraph(
      text:
      text,
      textAlign: pw.TextAlign.center,
      style: pw.TextStyle(fontSize: 12,fontWeight: isBold?pw.FontWeight.bold:null),);
  }
}
