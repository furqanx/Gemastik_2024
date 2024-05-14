import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CaloryEstimatorContent extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CaloryEstimatorContent({Key? key, required this.cameras}) : super(key: key);

  @override
  _CaloryEstimatorContentState createState() => _CaloryEstimatorContentState();
}

class _CaloryEstimatorContentState extends State<CaloryEstimatorContent> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool _flashOn = false;
  double _zoomLevel = 1.0;
  String? _capturedImagePath;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFlash() {
    setState(() {
      _flashOn = !_flashOn;
      _controller.setFlashMode(_flashOn ? FlashMode.torch : FlashMode.off);
    });
  }

  void _toggleZoom() {
    setState(() {
      if (_zoomLevel == 1.0) {
        _zoomLevel = 2.0;
      } else if (_zoomLevel == 2.0) {
        _zoomLevel = 4.0;
      } else {
        _zoomLevel = 1.0;
      }
      _controller.setZoomLevel(_zoomLevel);
    });
  }

  Future<void> _captureImage() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      setState(() {
        _capturedImagePath = image.path;
      });
      print('Photo taken at path: ${image.path}');
    } catch (e) {
      print('Error capturing photo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _capturedImagePath != null
          ? AppBar(
        title: Text('Captured Image'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              _capturedImagePath = null;
            });
          },
        ),
      )
          : null,
      body: Center(
        child: _capturedImagePath == null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.zoom_in, size: 30),
                  onPressed: _toggleZoom,
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: _captureImage,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.camera, color: Colors.white, size: 30),
                  ),
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off, size: 30),
                  onPressed: _toggleFlash,
                ),
              ],
            ),
          ],
        )
            : Card(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.file(File(_capturedImagePath!)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _capturedImagePath = null;
                  });
                },
                child: Text('Back to Camera'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
