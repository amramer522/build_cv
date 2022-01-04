import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'controller.dart';
import 'states.dart';

class ShowPdfScreen extends StatelessWidget {
  final String? path;

  ShowPdfScreen({this.path});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPdfController()..getPdf(path),
      child: BlocConsumer<ShowPdfController, ShowPdfStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final controller = ShowPdfController.get(context);
          return Scaffold(
            appBar: AppBar(title: Text("Your CV Shape"),),
              floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Share.shareFiles([path!], text: 'Great CV');
                },
                child: Icon(Icons.share),
              ),
              body: controller.pdfDocument != null
                  ? SafeArea(
                      child: PDFViewer(
                        document: controller.pdfDocument!,
                        scrollDirection: Axis.vertical,
                        // lazyLoad: false,
                        // minScale: 2,
                        // maxScale: 3,
                        // enableSwipeNavigation: false,
                        showIndicator: false,
                        showNavigation: false,
                        showPicker: false,
                      ),
                    )
                  : Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}
