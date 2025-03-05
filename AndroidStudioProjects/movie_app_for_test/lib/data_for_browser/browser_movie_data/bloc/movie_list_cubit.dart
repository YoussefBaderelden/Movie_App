import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


import '../model_browser.dart';
import '../repo.dart';

part 'movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  List<Movies> movies = [];
  final Repo repo;

  MovieListCubit(this.repo) : super(MovieListInitial());

  List<Movies> getMovies() {
    repo.getMovies().then((value) {
      emit(MovieListLoaded(value));
      movies = value;
    });
     return movies;
  }
}
