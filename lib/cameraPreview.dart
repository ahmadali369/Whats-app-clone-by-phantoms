import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

// late List<CameraDescription> _cameras;
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   _cameras = await availableCameras();
//   runApp(const CameraApp());
// }

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  CameraApp({super.key, required this.cameras});

  late List<CameraDescription> cameras;
  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {



    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return CameraPreview(controller);

  }
}