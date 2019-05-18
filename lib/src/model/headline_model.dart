class HeadlineModel {
  List<_Data> _results = [];

  HeadlineModel.fromJson(Map<String, dynamic> parsedJson) {
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
  String _name;
  String _author;
  String _title;
  String _description;
  String _url;
  String _urlToImage;
  String _publishedAt;
  String _content;

  _Data(result) {
    _id = result['id'];
    _name = result['name'];
    _author = result['author'];
    _title = result['title'];
    _description = result['description'];
    _url = result['url'];
    _urlToImage = result['urlToImage'];
    _publishedAt = result['publishedAt'];
    _content = result['content'];
  }
  int get id => _id;
  String get name => _name;
  String get author => _author;
  String get title => _title;
  String get description => _description;
  String get url => _url;
  String get urlToImage => _urlToImage;
  String get publishedAt => _publishedAt;
  String get content => _content;
}
