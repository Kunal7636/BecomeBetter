import '/flutter_flow/flutter_flow_util.dart';
import 'mediaflow_widget.dart' show MediaflowWidget;
import 'package:flutter/material.dart';

class MediaflowModel extends FlutterFlowModel<MediaflowWidget> {
  ///  Local state fields for this page.

  String? uid = '';

  String? frontfoot;

  String? backfoot;

  String? cutshot;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
