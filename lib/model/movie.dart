class Movie {
  final int id;
  final String backdrop_path;
  final String overview;
  final String poster_path;
  final String release_date;
  final String title;
  final String vote_average;

  Movie({
    required this.id,
    required this.backdrop_path,
    required this.overview,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.vote_average,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      backdrop_path: json['backdrop_path'] ?? '',
      overview: json['overview'] ?? '',
      poster_path: json['poster_path'] ?? '',
      release_date: json['release_date'] ?? '',
      title: json['title'] ?? '',
      vote_average: json['vote_average'].toString(),
    );
  }
}
