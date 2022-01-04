import 'package:build_cv/helper/helping_methods.dart';
import 'package:build_cv/screens/show_pdf/view.dart';
import 'package:flutter/material.dart';
import 'controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Great CV"),),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              controller.pickImage();
            }, child: Text("Pick Image"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          controller.writeOnPdf();
          await controller.savePdf().then((value){
            navigateTo(context: context,page: ShowPdfScreen(path: controller.fullPath,));
            setState(() {

            });
          });
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
