import 'package:dough/dough.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:mylinks/linkcard.dart';
import 'package:mylinks/CONSTANTS.dart' as Constants;

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FooterView(
      footer: new Footer(
          child: Padding(
        padding: new EdgeInsets.all(10.0),
        child: Text('❤️ Made With Flutter 2.0'),
      )),
      children: [
        SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  PressableDough(
                    child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('images/avatar.jpeg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    Constants.profileName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF162A49),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.github,
                    title: 'Github',
                    url: Constants.github,
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.discord,
                    title: 'Discord',
                    url: Constants.dicord,
                    color: Colors.indigo.shade800,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.userCheck,
                    title: 'Portfolio',
                    url: Constants.portfolio,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                      icon: FontAwesomeIcons.linkedin,
                      title: 'LinkedIn',
                      url: Constants.linkedin,
                      color: Colors.blue),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                      icon: FontAwesomeIcons.instagram,
                      title: 'Instagram',
                      url: Constants.instagram,
                      color: Colors.deepOrange),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.code,
                    title: 'CodersRank',
                    url: '',
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.twitter,
                    title: 'Twitter',
                    url: Constants.twitter,
                    color: Colors.cyan,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  LinkCard(
                    icon: FontAwesomeIcons.youtube,
                    title: 'Youtube',
                    url: Constants.youtube,
                    color: Colors.red.shade800,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
