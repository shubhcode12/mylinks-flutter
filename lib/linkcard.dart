import 'package:dough/dough.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCard extends StatelessWidget {
  LinkCard({this.icon, this.title, this.url, this.color});
  final IconData icon;
  final String title;
  final String url;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Container(
        width: 500,
        // decoration: BoxDecoration(
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.grey.withOpacity(0.5),

        //       blurRadius: 4,
        //       offset: Offset(0, 0), // Shadow position
        //     ),
        //   ],
        // ),
        child: Card(
          shadowColor: Colors.black,
          color: color,
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {
              launch(url);
              print(url);
            },
            child: ListTile(
              leading: FaIcon(
                icon,
                color: Colors.white,
              ),
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(null),
            ),
          ),
        ),
      ),
    );
  }
}
