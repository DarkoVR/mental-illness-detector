import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_illness_detector/ui/questionsView.dart';
import 'package:mental_illness_detector/util/strings.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  void _home(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionsView()),);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
            child: Card(
                child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Bienvenido!\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.red,
                            ),
                          ),
                          Text(
                            Strings.WELCOME,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0,
                            ),
                          ),
                          Container(
                            width: screenSize.width,
                            child: RaisedButton(
                              child: new Text(
                                'Iniciar',
                                style: new TextStyle(
                                    color: Colors.white
                                ),
                              ),
                              onPressed: _home,
                              color: Colors.red,
                            ),
                            margin: EdgeInsets.only(
                                top: 30.0
                            ),
                          )
                        ],
                      ),
                    )
                )
            ),
            constraints: BoxConstraints(
                maxHeight: 400.0,
                maxWidth: 350.0,
                minWidth: 300.0,
                minHeight: 200.0
            )
        ),
      ),
    );
  }
}
