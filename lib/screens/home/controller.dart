import 'dart:io';

import 'package:build_cv/helper/dummay_data.dart';
import 'package:build_cv/screens/home/widgets/item_bullet.dart';
import 'package:build_cv/screens/home/widgets/item_header.dart';
import 'package:build_cv/screens/home/widgets/item_paragraph.dart';
import 'package:build_cv/screens/home/widgets/item_personal_info.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class HomeController {
  final pdf = pw.Document();

  var profileImage;
  var whatsappImage;
  var phoneImage;
  var emailImage;

  File? image;
  pickImage() async {
    final pickedImage =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      print(image!.path);
    }
    // pw.RawImage(
    //     bytes: (await rootBundle.load(image!.path)).buffer.asUint8List(),
    //     height: 100,
    //     width: 100,
    //     dpi: 150);

    profileImage = pw.MemoryImage(
      (await rootBundle.load("assets/images/a.jpg")).buffer.asUint8List(),
    );
    whatsappImage = pw.MemoryImage(
      (await rootBundle.load("assets/images/whatsapp.png"))
          .buffer
          .asUint8List(),
    );
    phoneImage = pw.MemoryImage(
      (await rootBundle.load("assets/images/phone.png")).buffer.asUint8List(),
    );
    emailImage = pw.MemoryImage(
      (await rootBundle.load("assets/images/email.png")).buffer.asUint8List(),
    );
  }

  writeOnPdf() {
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(16),
      build: (pw.Context context) => [
        ItemPersonalInfo(
            name: userInfo.name,
            place: userInfo.place,
            phoneNumber: userInfo.phoneNumber,
            emailAddress: userInfo.emailAddress,
            emailIcon: emailImage,
            phoneIcon: phoneImage,
            whatsAppIcon: whatsappImage,
            image: profileImage),
        ItemHeader(
          text: sections[0],
        ),
        ItemParagraph(
          text: userInfo.summary,
        ),
        ItemHeader(
          text: sections[1],
        ),
        ItemParagraph(
            text:
                "${userInfo.faculty!.universityName} for ${userInfo.faculty!.name} ${userInfo.faculty!.fromDate}/${userInfo.faculty!.toDate}",
            isBold: true),
        ItemBullet(
          text: "With grade : ${userInfo.faculty!.graduationGrade}",
        ),
        ItemHeader(
          text: sections[2],
        ),
        pw.Column(
          children: List.generate(
            userInfo.courses!.length,
            (index) => ItemBullet(
              text:
                  "${userInfo.courses![index].name} from ${userInfo.courses![index].fromDate} to ${userInfo.courses![index].toDate}",
            ),
          ),
        ),
        ItemHeader(
          text: sections[3],
        ),
        pw.Column(
          children: List.generate(
            userInfo.experience!.length,
            (index) => ItemBullet(
                text:
                    "${userInfo.experience![index].title} at ${userInfo.experience![index].companyName} from ${userInfo.experience![index].fromDate} to ${userInfo.experience![index].toDate}"),
          ),
        ),
        ItemHeader(
          text: sections[4],
        ),
        pw.Column(
          children: List.generate(
            userInfo.skills!.length,
            (index) => ItemBullet(
              text: userInfo.skills![index],
            ),
          ),
        ),
        ItemHeader(
          text: sections[5],
        ),
        pw.Column(
          children: List.generate(
            userInfo.hobbies!.length,
            (index) => ItemBullet(
              text: userInfo.hobbies![index],
            ),
          ),
        ),
        ItemHeader(
          text: sections[6],
        ),
        pw.Column(
          children: List.generate(
            userInfo.languages!.length,
            (index) => ItemBullet(
                text:
                    "${userInfo.languages![index].name}(${userInfo.languages![index].level})"),
          ),
        ),
      ],
    ));
  }

  String? fullPath;

  Future savePdf() async {
    // from path provider
    Directory directory = await getApplicationDocumentsDirectory();
    String documentPath = directory.path;
    String fileName =
        "cv_${userInfo.name!.replaceAll(" ", "_").toLowerCase()}_${userInfo.jobTitle!.toLowerCase()}";
    File file = File("$documentPath/$fileName.pdf");
    file.writeAsBytesSync(await pdf.save());
    fullPath = file.path;
    print(fullPath);
  }
}
