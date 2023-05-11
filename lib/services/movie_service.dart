import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/model/movie.dart';

const apiKey = '2a0f926961d00c667e191a21c14461f8';

class MovieService {
  static final dio = Dio();

  static Future<Either<String, List<Movie>>> getMovieByCategory(
      {required String apiPath, required int page}) async {
    try {
      final response = await dio.get(
        apiPath,
        queryParameters: {'api_key': apiKey, 'page': page},
      );

/*
! Overall, this code snippet suggests that it is parsing a JSON response, extracting a list of results, and converting each result into a Movie object using a fromJson method provided by the Movie class. The resulting list is then stored in the data variable.
 
 */
      final data = (response.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();

      return Right(data);
    } on DioError catch (e) {
      return Left(e.toString());
    }
  }
}
