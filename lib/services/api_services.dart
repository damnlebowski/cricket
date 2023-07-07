import 'package:cricket/models/cricket/cricket.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();

  Future<Cricket?> getData(String url) async {
    Cricket? cricket;
    try {
      Response response = await dio.get(url);

      cricket = Cricket.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    return cricket;
  }
}
