class Movie {
  final String backdrop_path;
  final int id;
  final String overview;
  final String poster_path;
  final String release_date;
  final String title;
  final String vote_average;

  Movie({
    required this.backdrop_path,
    required this.id,
    required this.overview,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.vote_average,
  });
}
