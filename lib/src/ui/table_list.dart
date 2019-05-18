import 'package:flutter/material.dart';
import 'package:android8/src/blocs/table_bloc.dart';
import 'package:android8/src/model/table_model.dart';

class TableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchTableList();
    return Scaffold(
      appBar: AppBar(
        title: Text('MNL TODAY'),
      ),
      body: StreamBuilder(
        stream: bloc.tableData,
        builder: (context, AsyncSnapshot<TableModel> snapshot) {
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

  Widget buildList(AsyncSnapshot<TableModel> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.tabledata.length,
      itemBuilder: (BuildContext context, int index) {
       return Text("Hello World");
      },
    );
  }
}
