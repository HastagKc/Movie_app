import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/model/movie.dart';

final apiKey = '8d808fb7b0267930fd2c1490f6f50d4b';

class MovieServive {
  // create instance of the dio
  static final dio = Dio();
// create method of type future

  static Future<Either<String, List<Movie>>> getMovieByCategory(
      {required String apiPath, required int page}) async {
    try {
      /*   final response = await dio
          .get(apiPath, queryParameters: {'api_key': apiKey, 'page': page});
      final mil = {'page': 90, 'results': []};

      final data = (response.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();
      return Right(data); */

      final res = await dio.get(apiPath, queryParameters: {
        'api_key': apiKey,
        'page': page,
      });

      final data =
          (res.data['results'] as List).map((e) => Movie.fromJson(e)).toList();

      return Right(data);
    } on DioError catch (err) {
      return Left(err.toString());
    }
  }
}
