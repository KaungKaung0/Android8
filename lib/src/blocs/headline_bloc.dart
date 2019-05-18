import 'package:android8/src/model/headline_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:android8/src/resource/headline_repository.dart';

class HeadlineBloc{
  final _repository = Repository();
  final _tableFetcher = PublishSubject<HeadlineModel>();

  Observable<HeadlineModel> get headlineData => _tableFetcher.stream;

  fetchTableList() async{
    HeadlineModel headlineModel = await _repository.fetchAllTable();
    _tableFetcher.sink.add(headlineModel);
  }
  dispose(){
    _tableFetcher.close();
  }
}
final bloc = HeadlineBloc();