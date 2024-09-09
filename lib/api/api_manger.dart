import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/sources/sources_response.dart';

class ApiManger {
  static Future<SourcesResponse?> getSources() async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceAPi,
        {'apiKey': ApiConstants.apiKey});

    try {
      var response = await http.get(url);
      return SourcesResponse.fromJson(response.body);
    } catch (error) {
      throw Exception('Error fetching sources: $error');
    }
  }
}
