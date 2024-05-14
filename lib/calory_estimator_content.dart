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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
          ElevatedButton(
            onPressed: () async {
              try {
                await _initializeControllerFuture;
                final image = await _controller.takePicture();
                // Do something with the captured image
                print('Photo taken at path: ${image.path}');
              } catch (e) {
                print('Error capturing photo: $e');
              }
            },
            child: Text('Take Picture'),
          ),
        ],
      ),
    );
  }
}
