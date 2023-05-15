import 'package:movie_app/model/movie.dart';

class MovieState {
  final List<Movie> movies;
  final bool isLoading;
  final bool isError;
  final String errText;
  final bool isSucess;
  final int page;
  final String api;
  final bool isLoadmore;

  MovieState({
    required this.movies,
    required this.isLoading,
    required this.isError,
    required this.errText,
    required this.isSucess,
    required this.page,
    required this.api,
    required this.isLoadmore,
  });

  MovieState copyWith({
    List<Movie>? movies,
    bool? isLoading,
    bool? isError,
    String? errText,
    bool? isSucess,
    int? page,
    String? api,
    bool? isLoadmore,
  }) {
    return MovieState(
      movies: movies ?? this.movies,
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
      errText: errText ?? this.errText,
      isSucess: isSucess ?? this.isSucess,
      page: page ?? this.page,
      api: api ?? this.api,
      isLoadmore: isLoadmore ?? this.isLoadmore,
    );
  }
}
