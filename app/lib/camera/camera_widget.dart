import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera_controller.dart';
import 'types.dart';

class CameraView extends StatelessWidget {
  const CameraView(
      {super.key,
      required this.onInitialise,
      this.resolution = ResolutionPreset.medium,
      required this.scanWidget,
      required this.flashWidget});

  final OnInitialise onInitialise;
  final ResolutionPreset resolution;
  final Widget scanWidget;
  final Widget flashWidget;

  Widget _buildCameraPreview(
      CameraController cameraController, CameraDescription cameraDescription) {
    return FutureBuilder<void>(
      future: cameraController.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          onInitialise(CameraScannerController(cameraController));

          return _CameraPreview(
            cameraController: cameraController,
            camera: cameraDescription,
            flashWidget: flashWidget,
            scanWidget: scanWidget,
          );
        } else {
          return Center(
            child: MaterialButton(
              onPressed: () {
              },
              child: Text("requestCameraAccess"),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CamerasList>(
        future: getCameras(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return Center(child: Text("noCameraDetected"));
            }

            CameraDescription backCamera = snapshot.data!.first;

            CameraController cameraController = CameraController(
              backCamera,
              resolution,
            );
            return _buildCameraPreview(cameraController, backCamera);
          } else {
            return Center(child: Text("noCameraDetected"));
          }
        });
  }
}

class _CameraPreview extends StatefulWidget {
  final CameraDescription camera;
  final CameraController cameraController;
  final Widget flashWidget;
  final Widget scanWidget;

  const _CameraPreview({
    required this.cameraController,
    required this.flashWidget,
    required this.scanWidget,
    required this.camera,
  });

  @override
  State<_CameraPreview> createState() => _CameraPreviewState();
}

class _CameraPreviewState extends State<_CameraPreview> {
  bool isFlashOn = false;

  void toggleFlash() {
    if (isFlashOn) {
      widget.cameraController.setFlashMode(FlashMode.off);
    } else {
      widget.cameraController.setFlashMode(FlashMode.torch);
    }

    setState(() {
      isFlashOn = !isFlashOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    final camWidget = widget.cameraController.buildPreview();

    return Stack(children: [
      camWidget,
      Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: toggleFlash,
              child: widget.flashWidget,
            ),
            widget.scanWidget,
          ],
        ),
      )
    ]);
  }
}

