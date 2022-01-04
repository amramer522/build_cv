import 'package:pdf/widgets.dart' as pw;

class ItemBullet extends pw.StatelessWidget {
  final text;

  ItemBullet({this.text});

  @override
  pw.Widget build(context) {
    return pw.Bullet(text: text,bulletShape: pw.BoxShape.rectangle);
  }
}
