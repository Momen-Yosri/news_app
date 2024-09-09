import 'dart:convert';

import 'source.dart';

class SourcesResponse {
  String? status;
  String? code;
  String? message;
  
  List<Source>? sources;

  SourcesResponse({this.status, this.sources,this.code, this.message});

  @override
  String toString() => 'SourcesResponse(status: $status, sources: $sources)';

  factory SourcesResponse.fromMap(Map<String, dynamic> data) => SourcesResponse(
        status: data['status'] as String?,
        sources: (data['sources'] as List<dynamic>?)
            ?.map((e) => Source.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'sources': sources?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SourcesResponse].
  factory SourcesResponse.fromJson(String data) {
    return SourcesResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SourcesResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
