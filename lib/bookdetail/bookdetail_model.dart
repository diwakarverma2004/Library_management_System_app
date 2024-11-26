import '/flutter_flow/flutter_flow_util.dart';
import 'bookdetail_widget.dart' show BookdetailWidget;
import 'package:flutter/material.dart';

class BookdetailModel extends FlutterFlowModel<BookdetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for bookname widget.
  FocusNode? booknameFocusNode;
  TextEditingController? booknameTextController;
  String? Function(BuildContext, String?)? booknameTextControllerValidator;
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // State field(s) for tenure widget.
  FocusNode? tenureFocusNode;
  TextEditingController? tenureTextController;
  String? Function(BuildContext, String?)? tenureTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    booknameFocusNode?.dispose();
    booknameTextController?.dispose();

    codeFocusNode?.dispose();
    codeTextController?.dispose();

    tenureFocusNode?.dispose();
    tenureTextController?.dispose();
  }
}
