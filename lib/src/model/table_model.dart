class TableModel {
  List<_Data> _results = [];

  TableModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['data'].length);
    List<_Data> temp = [];
    for (int i = 0; i < parsedJson['data'].length; i++) {
      _Data result = _Data(parsedJson['data'][i]);
      temp.add(result);
    }
    _results = temp;
  }
  List<_Data> get tabledata => _results;
}

class _Data {
  int _id;
  int _postion;
  String _clubName;
  String _clubAbbr;
  int _played;
  int _won;
  int _drawn;
  int _lost;
  int _gf;
  int _ga;
  int _gd;
  int _points;
  String _form;

  _Data(result) {
    _id = result['id'];
    _postion = result['position'];
    _clubName = result['club'];
    _clubAbbr = result['c_abbr'];
    _played = result['played'];
    _won = result['won'];
    _drawn = result['drawn'];
    _lost = result['lost'];
    _gf = result['gf'];
    _ga = result['ga'];
    _gd = result['gd'];
    _points = result['points'];
    _form = result['form'];
  }
  int get id => _id;
  int get position => _postion;
  String get clubName => _clubName;
  String get clubAbbr => _clubAbbr;
  int get played => _played;
  int get won => _won;
  int get drawn => _drawn;
  int get lost => _lost;
  int get gf => _gf;
  int get ga => _ga;
  int get gd => _gd;
  int get points => _points;
  String get form => _form;
}
