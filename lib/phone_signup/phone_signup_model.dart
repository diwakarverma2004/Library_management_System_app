import '/flutter_flow/flutter_flow_util.dart';
import 'phone_signup_widget.dart' show PhoneSignupWidget;
import 'package:flutter/material.dart';

class PhoneSignupModel extends FlutterFlowModel<PhoneSignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneinput widget.
  FocusNode? phoneinputFocusNode;
  TextEditingController? phoneinputTextController;
  String? Function(BuildContext, String?)? phoneinputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneinputFocusNode?.dispose();
    phoneinputTextController?.dispose();
  }
}
