import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEC202B),
        title: RichText(
            text: TextSpan(
          text: "Hai ",
          style: TextStyle(fontSize: 18),
          children: [
            TextSpan(
              text: "Rifky",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        )),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 25,
              width: 25,
              child: Image.asset(
                "assets/icons/qr.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              color: Color(0xFFEC202B),
              width: Get.width,
              height: Get.height * 0.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 210,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ]),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "0896667477474",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Image.asset("assets/images/Simpati.png"),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sisa Pulsa Anda",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp.34.000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text("Isi Pulsa"),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF7B731),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.black87,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Berlaku sampai",
                                    style: TextStyle(fontSize: 16)),
                                TextSpan(
                                    text: "19 April 2022",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ])),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Telkomsel POIN",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF7B731),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text("172"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CardInfo("Internet", "12.9", "GB"),
                            CardInfo("Telpon", "0", "Min"),
                            CardInfo("SMS", "23", "SMS"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  color: Colors.grey[200],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MenuItem("inet", "Internet"),
                                  MenuItem("call", "Telpon"),
                                  MenuItem("chats", "SMS"),
                                  MenuItem("plane", "Roaming")
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MenuItem("play", "Hiburan"),
                                  MenuItem("ultimate", "Unggulan"),
                                  MenuItem("surat", "Tersimpan"),
                                  MenuItem("timer", "Riwayat")
                                ],
                              )
                            ],
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 70,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav("Home", "Filled", true),
                              ItemNav("Riwayat", "time", false),
                              ItemNav("Bantuan", "tanya", false),
                              ItemNav("Inbox", "pesan", false),
                              ItemNav("Akun Saya", "person", false)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem(this.icon, this.title);
  String icon;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/icons/$icon.png"),
        SizedBox(
          height: 10,
        ),
        Text(
          "${title}",
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav(this.title, this.icon, this.status);
  String title;
  String icon;
  bool status;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            "assets/icons/$icon.png",
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "${title} ",
          style: TextStyle(
            color: (status == true) ? Colors.red : Colors.grey,
          ),
        )
      ],
    );
  }
}

class CardInfo extends StatelessWidget {
  CardInfo(this.namaInfo, this.jumlah, this.satuan);
  String namaInfo;
  String jumlah;
  String satuan;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.25,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${namaInfo}", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(
                  text: "${jumlah} ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                  text: "${satuan}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[400],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 70, size.height);
    path.lineTo(size.width, size.height - 90);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
