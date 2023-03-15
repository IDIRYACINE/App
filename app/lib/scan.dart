import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ScanPanel extends StatelessWidget {
  const ScanPanel({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        body: CameraPreview(
      CameraController(const CameraDescription(
          sensorOrientation: 5,
          name: "",
          lensDirection: CameraLensDirection.back),ResolutionPreset.medium),
    ));
  }
}
