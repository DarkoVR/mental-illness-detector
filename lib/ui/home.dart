import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_illness_detector/util/navigation.dart';
import 'package:mental_illness_detector/util/strings.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  CurrentHome createState() => new CurrentHome();
}

class CurrentHome extends State<Home> {

  void _home() => Navigation.navigateToFirst(context);

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
                              onPressed: _home,
                              child: new Text(
                                Strings.START,
                                style: new TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 25.0,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                  new BorderRadius.circular(20.0)),
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
