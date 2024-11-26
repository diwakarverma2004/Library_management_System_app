import '/flutter_flow/flutter_flow_util.dart';
import 'otp_widget.dart' show OtpWidget;
import 'package:flutter/material.dart';

class OtpModel extends FlutterFlowModel<OtpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for otpinput widget.
  FocusNode? otpinputFocusNode;
  TextEditingController? otpinputTextController;
  String? Function(BuildContext, String?)? otpinputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    otpinputFocusNode?.dispose();
    otpinputTextController?.dispose();
  }
}
