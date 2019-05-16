import 'package:android8/src/model/table_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:android8/src/resource/repository.dart';

class TableBloc{
  final _repository = Repository();
  final _tableFetcher = PublishSubject<TableModel>();

  Observable<TableModel> get tableData => _tableFetcher.stream;

  fetchTableList() async{
    TableModel tableModel = await _repository.fetchAllTable();
    _tableFetcher.sink.add(tableModel);
  }
  dispose(){
    _tableFetcher.close();
  }
}
final bloc = TableBloc();