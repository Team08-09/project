import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vestes/constants.dart';

class Nots extends StatefulWidget {
  Nots({
    Key? key,
  }) : super(key: key);
  _NotsState createState() => _NotsState();
}

class _NotsState extends State<Nots> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(color: kIconsColor),
          title: Text(
            'Notifications',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(children: [
            Row(
              children: [
                Switch(
                  value: isSwitched1,
                  onChanged: (value) {
                    setState(() {
                      isSwitched1 = value;
                    });
                  },
                  activeTrackColor: LightPurple,
                  activeColor: MainPurple,
                ),
                Text('Email', style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Switch(
                  value: isSwitched2,
                  onChanged: (value) {
                    setState(() {
                      isSwitched2 = value;
                    });
                  },
                  activeTrackColor: LightPurple,
                  activeColor: MainPurple,
                ),
                Text('Push-notifications', style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Switch(
                  value: isSwitched3,
                  onChanged: (value) {
                    setState(() {
                      isSwitched3 = value;
                    });
                  },
                  activeTrackColor: LightPurple,
                  activeColor: MainPurple,
                ),
                Text('SMS', style: TextStyle(fontSize: 16)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    size: 50,
                    color: MainPurple,
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
