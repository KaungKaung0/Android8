import 'package:flutter/material.dart';
import 'package:android8/src/blocs/headline_bloc.dart';
import 'package:android8/src/model/headline_model.dart';

class HeadlineList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchTableList();
    return Scaffold(
      appBar: AppBar(
        title: Text('MNL TODAY'),
      ),
      body: StreamBuilder(
        stream: bloc.headlineData,
        builder: (context, AsyncSnapshot<HeadlineModel> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<HeadlineModel> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.tabledata.length,
      itemBuilder: (BuildContext context, int index) {
        Color color = Theme.of(context).primaryColor;
        String urlToImage =
            snapshot.data.tabledata[index].urlToImage.toString();
        String title = snapshot.data.tabledata[index].title.toString();
        String author = snapshot.data.tabledata[index].author.toString();
        String name = snapshot.data.tabledata[index].name.toString();
        String publishedAt =
            snapshot.data.tabledata[index].publishedAt.toString();
        String description =
            snapshot.data.tabledata[index].description.toString();
        return Column(
          children: <Widget>[
            Image.network(
              urlToImage,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Text(
                          author + " | " + name + " | " + publishedAt,
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            description,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButtonColumn(color, Icons.watch_later, 'Read Later'),
                  _buildButtonColumn(color, Icons.more, 'Raad More'),
                  
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(bottom: 16, top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
    
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
