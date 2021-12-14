import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vestes/constants.dart';

import 'nots_screen.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(children: [
                  const Text(
                    "Crede, per totam noctem hoc bullshit, nunc flere incipiam, obsecro, in omnibus rebus debitorum habeo, et etiam ex meo officio accensus sum. Da fidem, esto homo",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: PinkRed,
                                  fixedSize: const Size(150, 40)),
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                launch(
                                    'https://accounts.google.com/ServiceLogin');
                              },
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: PinkRed,
                                  fixedSize: const Size(150, 40)),
                              child: const Text(
                                'Join',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                launch('https://accounts.google.com/signup');
                              },
                            )
                          ])),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.location_city_rounded,
                                    color: kIconsColor,
                                    size: 30,
                                  ),
                                  label: const Text(
                                    'City',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  )),
                              const Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Text(
                                    'St.Petersburg',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: kIconsColor,
                                    ),
                                  )),
                            ]),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(children: [
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Nots()));
                                },
                                icon: const Icon(
                                  Icons.notifications,
                                  color: kIconsColor,
                                  size: 30,
                                ),
                                label: const Text(
                                  'Notifications',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                )),
                          ]),
                        ),
                        const Divider(
                          color: kIconsColor,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                                'Ordines positi utentes donationis testimonium congruo tradi possunt. Poteris emere quae tibi non placuerit nolle. Pecunia super libellum donationis non exibit et reserabitur postquam item in horreum redditur.',
                                style: TextStyle(fontSize: 16))),
                        const Divider(
                          color: kIconsColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: SizedBox(
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.phone,
                                        color: kIconsColor,
                                        size: 30,
                                      ),
                                      Text('8(812)246-47-49',
                                          style: TextStyle(
                                              color: kTextLightColor)),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: kIconsColor,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.email,
                                        color: kIconsColor,
                                        size: 30,
                                      ),
                                      Text('vestes@email.com',
                                          style: TextStyle(
                                              color: kTextLightColor)),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        const Divider(
                          color: kIconsColor,
                        ),
                      ],
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
