import 'dart:async';
import 'headlines_api_provider.dart';
import 'package:android8/src/model/headline_model.dart';

class Repository{
  final headlinesApiProvider = HeadlinesApiProvider();
  
  Future<HeadlineModel> fetchAllTable() => headlinesApiProvider.fetchTableList();
}