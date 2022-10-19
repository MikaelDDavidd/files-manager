import 'package:dio/dio.dart';
import 'package:files_manager/models/midia_model.dart';

class ContentProvider {
  Future<Media> getContent() async {
    try {
      var response = await Dio().get('http://www.example.com');
      return Media.fromJson(response.data);
      //print(response);
    } catch (e) {
      return Media(Media.EMPTY, Media.EMPTY, Media.EMPTY)
          .setError(e.toString());
    }
  }
}
