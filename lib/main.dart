///Credits Screen for people who worked on the App.

import 'package:credits/credits_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credits',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFAEA5F),
      ),
      home: CreditsPage(),
    );
  }
}

/// To change data, change according to your need in CreditsPage()
/// To add more cards, add CreditsDetailCards() and fill the data

class CreditsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Credits'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CreditsDetailCards(
                /// Image Asset location
                picture: 'maruf.jpg',
                ///Name
                name: 'MARUF HASSAN',
                ///Post/Designation
                designation: 'Senior Developer',
                ///First Logo with link to redirect to profile
                logoA: Typicons.linkedin,
                linkA: 'https://www.linkedin.com/in/maruf-hassan/',
                ///Second Logo with link to redirect to profile
                logoB: Typicons.github,
                linkB: 'https://github.com/zyllus17',
                ///Third Logo with link to redirect to profile
                logoC: Typicons.twitter,
                linkC: 'https://twitter.com/MarufHassan5',
              ),
              CreditsDetailCards(
                picture: 'profile.jpg',
                name: 'MAHIN HASSAN',
                designation: 'Senior Designer',
                logoA: Typicons.linkedin,
                linkA: 'https://www.linkedin.com/in/maruf-hassan/',
                logoB: Typicons.facebook,
                linkB: 'https://www.facebook.com/marufhassan17/',
                logoC: Typicons.twitter,
                linkC: 'https://twitter.com/MarufHassan5',
              ),
              CreditsDetailCards(
                picture: 'chris.jpg',
                name: 'REHAN AHAMED',
                designation: 'UI Designer',
                logoA: Typicons.linkedin,
                linkA: 'https://www.linkedin.com/in/maruf-hassan/',
                logoB: Typicons.github,
                linkB: 'https://github.com/zyllus17',
                logoC: Typicons.facebook,
                linkC: 'https://www.facebook.com/marufhassan17/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

