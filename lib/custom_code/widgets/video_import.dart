// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:path_provider/path_provider.dart';

class VideoPickerThumbnail extends StatefulWidget {
  @override
  _VideoPickerThumbnailState createState() => _VideoPickerThumbnailState();
}

class _VideoPickerThumbnailState extends State<VideoPickerThumbnail> {
  File? _videoFile;
  File? _thumbnailFile;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      final videoFile = File(pickedFile.path);
      setState(() {
        _videoFile = videoFile;
      });

      final thumbnailPath = await _generateThumbnail(videoFile.path);
      setState(() {
        _thumbnailFile = thumbnailPath != null ? File(thumbnailPath) : null;
      });
    }
  }

  Future<String?> _generateThumbnail(String videoPath) async {
    final tempDir = await getTemporaryDirectory();
    final thumbnailPath = await VideoThumbnail.thumbnailFile(
      video: videoPath,
      thumbnailPath: tempDir.path,
      imageFormat: ImageFormat.JPEG,
      maxHeight: 128, // Specify the height of the thumbnail
      quality: 75,
    );
    return thumbnailPath;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _pickVideo,
          child: Text("Import Video"),
        ),
        SizedBox(height: 16),
        if (_thumbnailFile != null)
          Image.file(
            _thumbnailFile!,
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
        if (_videoFile == null)
          Text("No video selected", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
