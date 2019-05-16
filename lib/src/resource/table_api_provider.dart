import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:android8/src/model/table_model.dart';

class TableApiProvider{
  Client client = Client();
  final _apiKey = '123456789';

  Future<TableModel> fetchTableList() async {
    print("api connecting");
    final response = await client.get("https://still-river-53063.herokuapp.com/api/v1/standing-table");

    if(response.statusCode == 200){
      return TableModel.fromJson(json.decode(response.body));
    }
    else{
      throw Exception('Failed to load post');
    }
  }
}