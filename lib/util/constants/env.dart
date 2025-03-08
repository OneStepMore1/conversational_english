import 'package:flutter/foundation.dart';

class ENV {
  final bool isLive = kDebugMode;
  late String baseUrl = isLive ? "https://api.echogpt.live/" : "https://api.echogpt.live/";
}
