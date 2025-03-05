import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchMovies() async {
  try {
    final response = await http.get(
      Uri.parse('https://yts.mx/api/v2/list_movies.json?limit=20'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data['data'] != null && data['data']['movies'] != null) {
        List movies = data['data']['movies'];

        return movies.map<Map<String, dynamic>>((movie) {
          return {
            'id': movie['id'] ?? 0,
            'title': movie['title'] ?? 'Unknown Title',
            'year': movie['year']?.toString() ?? 'N/A',
            'rating': movie['rating']?.toString() ?? 'N/A',
            'medium_cover_image': movie['medium_cover_image'] ??
                'https://via.placeholder.com/150',
            'yt_trailer_code': movie['yt_trailer_code'] ?? '',
          };
        }).toList();
      } else {
        throw Exception('No movies found');
      }
    } else {
      throw Exception(
          'Failed to load movies. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print("Error fetching movies: $e");
    return [];
  }
}
