import 'package:flutter/material.dart';
import 'package:vestes/constants.dart';
import 'package:vestes/screens/good_list.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'SALE',
                          categoryURL: 'women\'s clothing',
                        )));
          },
          child: Padding(
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
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'Female',
                          categoryURL: 'women\'s clothing',
                        )));
          },
          child: Padding(
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
                          'https://picsy.ru/images/photos/1200/1/devushka-png-na-prozrachnom-fone-27249207.jpg',
                          height: 130,
                        ))
                  ],
                )),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'Male',
                          categoryURL: 'men\'s clothing',
                        )));
          },
          child: Padding(
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
                          'https://www.nicepng.com/png/full/88-882283_fashion-men-png-gentleman.png',
                          height: 120,
                        ))
                  ],
                )),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'Boys',
                          categoryURL: 'men\'s clothing',
                        )));
          },
          child: Padding(
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
                        padding: const EdgeInsets.only(right: 30),
                        child: Image.network(
                          'https://www.mpa-pro.fr/resize/500x500/zc/2/f/0/src/sites/mpapro/files/products/d11774.png',
                          height: 110,
                        ))
                  ],
                )),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'Girls',
                          categoryURL: 'women\'s clothing',
                        )));
          },
          child: Padding(
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
                          'https://4.bp.blogspot.com/-moYDFLkY-JY/UXQp9JpZR7I/AAAAAAAAFgA/pllxAksbQgU/s1600/MR_Beautiful+Spring+Girl.png',
                          height: 120,
                        ))
                  ],
                )),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodList(
                          categoryName: 'Accessories',
                          categoryURL: 'jewelery',
                        )));
          },
          child: Padding(
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
                      child:
                          Text('Accessories', style: TextStyle(fontSize: 22)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: Image.network(
                          'http://pngimg.com/uploads/jewelry/jewelry_PNG6721.png',
                          height: 110,
                        ))
                  ],
                )),
          ),
        ),
        Image.network(
            'https://miraylastore.com/Uploads/SayfaTasarim/Sayfa10/Yazlik-Elbiseler-90b8.jpg')
      ]),
    );
  }
}
