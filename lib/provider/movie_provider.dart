import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/model/movie_state.dart';
import 'package:movie_app/services/movie_service.dart';

class MovieProvider extends StateNotifier<MovieState> {
  MovieProvider(super.state);

  // create a function

  Future<void> getMovieBycategory() async {
    state = state.copyWith(
      isLoading: state.isLoadmore ? false : true,
      isError: false,
      isSucess: false,
    );
    final response = await MovieServive.getMovieByCategory(
      apiPath: state.api,
      page: state.page,
    );
    response.fold(
      (l) => state = state.copyWith(
        isSucess: false,
        isError: true,
        errText: l,
        isLoading: false,
        movies: [],
      ),
      (r) => state = state.copyWith(
        isError: false,
        errText: '',
        isSucess: true,
        isLoading: false,
        movies: [...state.movies, ...r],
      ),
    );
  }

  Future<void> LoadMore() async {
    state = state.copyWith(
      page: state.page + 1,
      isLoadmore: true,
    );
    getMovieBycategory();
  }
}
