import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:android8/src/model/headline_model.dart';

class HeadlinesApiProvider{
  Client client = Client();
  final _apiKey = '\$'+'2y\$'+'10\$'+'Ji9lc1fBNSfHKKcztLIrseur0CtBHn\\\'/IuPLD9bWKWYVT5poFC7ESC';
  Future<HeadlineModel> fetchTableList(int page) async {
    print("api connecting");
    final response = await client.get("https://still-river-53063.herokuapp.com/api/v1/top-headlines/$page?apiKey=$_apiKey");

    if(response.statusCode == 200){
      return HeadlineModel.fromJson(json.decode(response.body));
    }
    else{
      throw Exception('Failed to load post');
    }
  }
}