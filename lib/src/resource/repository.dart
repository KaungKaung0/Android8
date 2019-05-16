import 'dart:async';
import 'table_api_provider.dart';
import 'package:android8/src/model/table_model.dart';

class Repository{
  final tableApiProvider = TableApiProvider();

  Future<TableModel> fetchAllTable() => tableApiProvider.fetchTableList();
}