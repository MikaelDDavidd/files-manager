import 'package:flutter/material.dart';

class Media {
  static const String EMPTY = "";

  late String video;
  late String audio;
  late String pdf;
  late Map<String, dynamic> httpError = {"error": false, "errorMessage": ""};

  Media(this.video, this.audio, this.pdf);

  setError(String message) {
    httpError["error"] = true;
    httpError["errorMessage"] = message;
  }

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(json['video'], json['audio'], json['pdf']);
  }

  String mediaUrl() {
    return '{ ${this.video}, ${this.audio}, ${this.pdf} }';
  }
}
