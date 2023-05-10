//! creating api class with static fields

class Api {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const getPopular = '$baseUrl/movie/popular';
  static const getTopRated = '$baseUrl/movie/top_rated';
  static const getUpcomming = '$baseUrl/movie/upcomming';
}
