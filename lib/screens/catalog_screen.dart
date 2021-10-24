import 'package:flutter/material.dart';
import 'package:vestes/constants.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('SALE',
                        style: TextStyle(color: Colors.red, fontSize: 26)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.network(
                        'https://www.onlygfx.com/wp-content/uploads/2020/05/sale-stamp-1.png',
                        height: 80,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Female', style: TextStyle(fontSize: 22)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: Image.network(
                        'https://tlgrmx.ru/stickers/662/40.png',
                        height: 130,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Male', style: TextStyle(fontSize: 22)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Image.network(
                        'https://clipart-best.com/img/vladimir-putin/vladimir-putin-clip-art-21.png',
                        height: 120,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Boys', style: TextStyle(fontSize: 22)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.network(
                        'https://avatanplus.com/files/resources/original/575acd3ea7f461553ab1bce0.png',
                        height: 110,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Girls', style: TextStyle(fontSize: 22)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Image.network(
                        'https://www.indyturk.com/sites/default/files/greta-thunberg.png',
                        height: 110,
                      ))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Container(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 130),
              color: LightPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Accessories', style: TextStyle(fontSize: 22)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 50,
                      ),
                      child: Image.network(
                        'https://clipart-best.com/img/handcuffs/handcuffs-clip-art-53.png',
                        height: 50,
                      ))
                ],
              )),
        ),
        Image.network(
            'https://miraylastore.com/Uploads/SayfaTasarim/Sayfa10/Yazlik-Elbiseler-90b8.jpg')
      ]),
    );
  }
}
