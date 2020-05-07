import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsDetailCards extends StatelessWidget {
  final String name;
  final String designation;
  final String picture;
  final String linkA;
  final String linkB;
  final String linkC;
  final IconData logoA;
  final IconData logoB;
  final IconData logoC;

  CreditsDetailCards({
    @required this.name,
    @required this.linkA,
    @required this.linkB,
    @required this.linkC,
    @required this.designation,
    @required this.picture,
    @required this.logoA,
    @required this.logoB,
    @required this.logoC,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.black38,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 32.0,
                    backgroundImage: AssetImage('assets/images/$picture'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Container(
                  height: 150.0,
                  width: 210.0,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$name',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$designation',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Center(
                            child: Row(children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.black,
                                  child: Icon(
                                    logoA,
                                    color: Colors.white,
                                  ),
                                  onPressed: launchURLA,
                                  shape: CircleBorder(),
                                ),
                              ),
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.black,
                                  child: Icon(
                                    logoB,
                                    color: Colors.white,
                                  ),
                                  onPressed: launchURLB,
                                  shape: CircleBorder(),
                                ),
                              ),
                              Expanded(
                                  child: RaisedButton(
                                    color: Colors.black,
                                    child: Icon(
                                      logoC,
                                      color: Colors.white,
                                    ),
                                    onPressed: launchURLC,
                                    shape: CircleBorder(),
                                  ))
                            ]))
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  launchURLA() async {
    String url = "$linkA";
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true); //forceWebView
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURLB() async {
    String url = "$linkB";
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true); //forceWebView
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURLC() async {
    String url = "$linkC";
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true); //forceWebView
    } else {
      throw 'Could not launch $url';
    }
  }
}
