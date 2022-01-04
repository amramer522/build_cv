import 'dart:io';

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states.dart';

class ShowPdfController extends Cubit<ShowPdfStates> {
  ShowPdfController() : super(ShowPdfInitialState());

  static ShowPdfController get(context) => BlocProvider.of(context);
  PDFDocument? pdfDocument;
   getPdf(path)async{
     pdfDocument = await PDFDocument.fromFile(File(path));
     emit(ShowPdfGetPDFState());
  }

}