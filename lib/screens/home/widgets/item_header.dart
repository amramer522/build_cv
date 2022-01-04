import 'package:pdf/widgets.dart' as pw;

class ItemHeader extends pw.StatelessWidget {
  final text;

  ItemHeader({this.text});

  @override
  pw.Widget build(context) {
    return pw.Header(
      level: 0,
      child: pw.Center(
        child: pw.Text(
          text,
          style: pw.TextStyle(
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
