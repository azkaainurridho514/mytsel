import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Azka ainurridho",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: 15),
              child: Image.asset(
                'assets/logo/round-qrcode.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              width: Get.width,
              height: 200,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "081833839347",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/logo/simpati-logo.png",
                                    width: 100,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sisa Pulsa Anda",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp24.545.000",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Isi Pulsa",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFF7B731),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.black87,
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Berlaku sampai, ",
                                  children: [
                                    TextSpan(
                                      text: "20 April 2025",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Telkomsel Point ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 7,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      '21172',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: "Internet",
                            data: "112.19",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "221",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "2121",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                  height: 5,
                  color: Color.fromARGB(255, 226, 226, 227),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Kategori Paket',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              // KATEGORI PAKET
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  KategoriPaket(
                                    title: "Internet",
                                    icon: "internet",
                                  ),
                                  KategoriPaket(
                                    title: "Telpone",
                                    icon: "telpon",
                                  ),
                                  KategoriPaket(
                                    title: "SMS",
                                    icon: "sms",
                                  ),
                                  KategoriPaket(
                                    title: "Roaming",
                                    icon: "roaming",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  KategoriPaket(
                                    title: "Hiburan",
                                    icon: "hiburan",
                                  ),
                                  KategoriPaket(
                                    title: "Unggulan",
                                    icon: "unggulan",
                                  ),
                                  KategoriPaket(
                                    title: "Tersimpan",
                                    icon: "tersimpan",
                                  ),
                                  KategoriPaket(
                                    title: "Riwayat",
                                    icon: "riwayat",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // TERBARU DARI TELKOMSEL
                              TitleSection(
                                title: 'Terbaru dari Telkomsel',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ListTerbaruTelkomsel(
                                      img: '1',
                                      title: 'Internet OMG!',
                                      subtitle: 'Bisa YouTube dan Sosmed',
                                      firstColor: Color(0xFFFF512F),
                                      secondColor: Color(0xFFDD2476),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ListTerbaruTelkomsel(
                                      img: '2',
                                      title: 'Berhadiah!',
                                      subtitle: 'Buruan daftar sekarang!',
                                      firstColor: Color(0xFF4776E6),
                                      secondColor: Color(0xFF8E54E9),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ListTerbaruTelkomsel(
                                      img: '1',
                                      title: 'Internet OMG!',
                                      subtitle: 'Bisa YouTube dan Sosmed',
                                      firstColor: Color(0xFFFF512F),
                                      secondColor: Color(0xFFDD2476),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ListTerbaruTelkomsel(
                                      img: '2',
                                      title: 'Berhadiah!',
                                      subtitle: 'Buruan daftar sekarang!',
                                      firstColor: Color(0xFF4776E6),
                                      secondColor: Color(0xFF8E54E9),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // TANGGAPAN COVID
                              Text(
                                'Tanggapan COVID-19',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    TanggapanCovid(
                                      img: '1',
                                      title:
                                          'Diskon Spesial 25% untuk pelanggan baru',
                                    ),
                                    TanggapanCovid(
                                      img: '2',
                                      title:
                                          'Bebas Kuota Akses Layanan Kesehatan',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // PAKAI LINK AJA
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'AYO! Pake LinkAja!',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.',
                                      style: TextStyle(
                                        fontSize: 16,
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
                                    ListLinks(
                                      img: '1',
                                      title: 'Bayar Serba Cepat',
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    ListLinks(
                                      img: '2',
                                      title: 'Cukup Scan QR',
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    ListLinks(
                                      img: '3',
                                      title: 'No! Credit Card',
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // VOUCHER
                              TitleSection(
                                title: 'Cari Voucher, Yuk!',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ListVoucher(
                                      img: '1',
                                      title:
                                          'Double Benefits from DOUBLE UNTUNG',
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ListVoucher(
                                      img: '2',
                                      title: 'Join Undi-Undi Hepi 2020!',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // PENAWARAN KHUSUS
                            ],
                          ),
                        ),
                        // end body

                        // navigation
                        Container(
                          margin: EdgeInsets.only(
                            bottom: context.mediaQueryPadding.bottom,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey.shade400),
                            ),
                          ),
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                icon: "beranda",
                                title: "Beranda",
                                status: true,
                              ),
                              ItemNav(
                                icon: "riwayat",
                                title: "Riwayat",
                                status: false,
                              ),
                              ItemNav(
                                icon: "bantuan",
                                title: "Bantuan",
                                status: false,
                              ),
                              ItemNav(
                                icon: "inbox",
                                title: "Inbox",
                                status: false,
                              ),
                              ItemNav(
                                icon: "akun-saya",
                                title: "Akun Saya",
                                status: false,
                              ),
                            ],
                          ),
                        ),
                        // end navigation
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Lihat Semua',
            style: TextStyle(
              color: Colors.red,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}

class ListLinks extends StatelessWidget {
  const ListLinks({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/link-$img.png',
              width: 160,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListVoucher extends StatelessWidget {
  const ListVoucher({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/cari-voucher-$img.png',
              width: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TanggapanCovid extends StatelessWidget {
  const TanggapanCovid({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/tanggapan-covid-$img.png'),
          Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              width: 220,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListTerbaruTelkomsel extends StatelessWidget {
  const ListTerbaruTelkomsel({
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
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
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

class KategoriPaket extends StatelessWidget {
  const KategoriPaket({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 35,
          height: 35,
          child: Image.asset(
            'assets/icons/kategori-paket/$icon.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          child: Image.asset(
            (status == true)
                ? "assets/icons/nav-bottom/$icon-filled.png"
                : "assets/icons/nav-bottom/$icon-outline.png",
            fit: BoxFit.contain,
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  final String title;
  final String data;
  final String satuan;

  const StatusCard({
    Key? key,
    required this.data,
    required this.title,
    required this.satuan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEC2028),
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF747D8C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 65, size.height);
    path.lineTo(size.width, size.height - 65);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 70,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
