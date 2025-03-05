import 'package:dio/dio.dart';

import 'model_browser.dart';

class WebService {
  late Dio dio ;
  WebService(){
    BaseOptions options = BaseOptions(
      baseUrl: 'https://yts.mx/api/v2/',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout:const Duration(seconds: 60),
    );
    dio = Dio(options);
  }
  Future<ModelBrowser> getMovies() async {
    try {
      Response response = await dio.get('list_movies.json');
      return ModelBrowser.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}