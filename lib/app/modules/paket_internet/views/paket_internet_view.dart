import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/paket_internet_controller.dart';

class PaketInternetView extends GetView<PaketInternetController> {
  const PaketInternetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    final appBar = AppBar(
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.black,
      ),
      title: Text(
        'Paket Internet',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
    final heightAppBar = appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFFF1F2F6),
            ),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextField(
              cursorHeight: 25,
              style: TextStyle(),
              decoration: InputDecoration(
                hintText: "Cari paket favorit kamu ...",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                PaketInternetSatu(
                  img: '1',
                  title: 'Internet OMG!',
                  subtitle: 'Bisa YouTube dan Sosmed',
                  firstColor: Color(0xFFFF512F),
                  secondColor: Color(0xFFDD2476),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '2',
                  title: 'Berhadiah!',
                  subtitle: 'Buruan daftar sekarang!',
                  firstColor: Color(0xFF4776E6),
                  secondColor: Color(0xFF8E54E9),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '1',
                  title: 'Internet OMG!',
                  subtitle: 'Bisa YouTube dan Sosmed',
                  firstColor: Color(0xFFFF512F),
                  secondColor: Color(0xFFDD2476),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '2',
                  title: 'Berhadiah!',
                  subtitle: 'Buruan daftar sekarang!',
                  firstColor: Color(0xFF4776E6),
                  secondColor: Color(0xFF8E54E9),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '1',
                  title: 'Internet OMG!',
                  subtitle: 'Bisa YouTube dan Sosmed',
                  firstColor: Color(0xFFFF512F),
                  secondColor: Color(0xFFDD2476),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '2',
                  title: 'Berhadiah!',
                  subtitle: 'Buruan daftar sekarang!',
                  firstColor: Color(0xFF4776E6),
                  secondColor: Color(0xFF8E54E9),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '1',
                  title: 'Internet OMG!',
                  subtitle: 'Bisa YouTube dan Sosmed',
                  firstColor: Color(0xFFFF512F),
                  secondColor: Color(0xFFDD2476),
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternetSatu(
                  img: '2',
                  title: 'Berhadiah!',
                  subtitle: 'Buruan daftar sekarang!',
                  firstColor: Color(0xFF4776E6),
                  secondColor: Color(0xFF8E54E9),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Langganan Kamu",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                PaketInternet2(
                  gb: "14 GB",
                  time: "30 HARI",
                  invalidPrice: "Rp99.000",
                  validPrice: "Rp96.000",
                  text: "Internet OMG!",
                ),
                SizedBox(
                  width: 10,
                ),
                PaketInternet2(
                  gb: "27 GB",
                  time: "30 HARI",
                  invalidPrice: "Rp145.000",
                  validPrice: "Rp133.000",
                  text: "iPhone Plan",
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kategori",
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 1,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryOne(),
                CategoryOne(),
                CategoryOne(),
                CategoryOne(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryOne extends StatelessWidget {
  const CategoryOne({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 166, 16, 5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "okekekekkekekk",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class PaketInternet2 extends StatelessWidget {
  const PaketInternet2({
    Key? key,
    required this.gb,
    required this.time,
    required this.invalidPrice,
    required this.validPrice,
    required this.text,
  }) : super(key: key);

  final String gb;
  final String time;
  final String invalidPrice;
  final String validPrice;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(66, 202, 202, 202),
          style: BorderStyle.solid,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                gb,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFF1F2F6),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.hourglass_bottom,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.bookmark_rounded,
                color: Color(0xFFCED6E0),
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    invalidPrice,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  ),
                  Text(
                    validPrice,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFFEC2028),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class PaketInternetSatu extends StatelessWidget {
  const PaketInternetSatu({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);

  final String img;
  final String title;
  final String subtitle;
  final dynamic firstColor;
  final dynamic secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            firstColor,
            secondColor,
          ],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Image.asset('assets/images/terbaru-dari-telkomsel-$img.png'),
          SizedBox(
            width: 15,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 125,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
