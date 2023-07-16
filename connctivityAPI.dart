 
class MyPlugin {
  static const MethodChannel _channel = MethodChannel('my_plugin');

  static Future<bool> isConnectedToWifi() async {
    try {
      final bool isConnected = await _channel.invokeMethod('isConnectedToWifi');
      print('True');
      return isConnected;
    } catch (e) {
      throw Exception('Failed to check Wi-Fi connectivity: $e');
    }
  }

  static Future<bool> isConnectedToCellular() async {
    try {
      final bool isConnected = await _channel.invokeMethod('isConnectedToCellular');
      return isConnected;
    } catch (e) {
      throw Exception('Failed to check cellular connectivity: $e');
    }
  }

  static Future<bool> requestCameraPermission() async {
    try {
      final bool isGranted = await _channel.invokeMethod('requestCameraPermission');
      return isGranted;
    } catch (e) {
      throw Exception('Failed to request camera permission: $e');
    }
  }

  static Future<bool> requestMicrophonePermission() async {
    try {
      final bool isGranted = await _channel.invokeMethod('requestMicrophonePermission');
      return isGranted;
    } catch (e) {
      throw Exception('Failed to request microphone permission: $e');
    }
  }

  static Future<bool> requestLocationPermission() async {
    try {
      final bool isGranted = await _channel.invokeMethod('requestLocationPermission');
      return isGranted;
    } catch (e) {
      throw Exception('Failed to request location permission: $e');
    }
  }
