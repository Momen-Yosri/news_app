import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/models/news/news.dart';
import 'package:news_app/api/models/sources/sources_response.dart';

class ApiManger {
  static Future<SourcesResponse?> getSources(String categoryId) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceAPi,
        {'apiKey': ApiConstants.apiKey,
        'category': categoryId});

    try {
      var response = await http.get(url);
      return SourcesResponse.fromJson(response.body);
    } catch (error) {
      throw Exception('Error fetching sources: $error');
    }
  }

  static Future<News?> getNewsWithId(String id) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.newsApi,
        {'apiKey': ApiConstants.apiKey, 'sources': id});
    try {
      var response = await http.get(url);
      return News.fromJson(response.body);
    } catch (error) {
      throw Exception('Error fetching sources: $error');
    }
  }
}
