import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_illness_detector/util/strings.dart';

class QuestionsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
            child: const Icon(Icons.info_outline),
            backgroundColor: Colors.red,
            onPressed: () {
              key.currentState.showSnackBar(new SnackBar(content: new Text(Strings.QUESTIONS_INFO)));
            });
      }),
      appBar: AppBar(
        title: Text(Strings.QUESTIONS_VIEW),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                key.currentState.showSnackBar(new SnackBar(content: new Text("En desarrollo..."),));
              },
            ),
          ],
      ),
      body: Center(
        child: Text(Strings.APP_NAME)
      ),
    );
  }
}