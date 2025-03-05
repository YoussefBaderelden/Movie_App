part of 'movie_list_cubit.dart';

@immutable
sealed class MovieListState {}

final class MovieListInitial extends MovieListState {}

class MovieListLoaded extends MovieListState {
  final List<Movies> movies;
  MovieListLoaded(this.movies);
}
