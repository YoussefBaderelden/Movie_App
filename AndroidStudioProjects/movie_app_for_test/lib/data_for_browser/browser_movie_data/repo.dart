
import 'package:movie_app_for_test/data_for_browser/browser_movie_data/web_service.dart';

import 'model_browser.dart';

class Repo {
  final WebService webService ;

  Repo(this.webService);

  Future<List<Movies>> getMovies() async{
    ModelBrowser modelBrowser = await webService.getMovies();
    return modelBrowser.data?.movies ?? [];
  }
}