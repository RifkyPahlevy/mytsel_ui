import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 150,
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/images/Layer login.png"),
          ),
          Text(
            "Silahkan masuk dengan nomor telkomsel kamu",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nomor HP",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.phoneC,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Cth. 08xxxxxxxxxx",
              hintStyle: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Obx(() => Checkbox(
                    value: controller.isCheck.value,
                    onChanged: (value) {
                      controller.isCheck.toggle();
                    },
                  )),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        text: "Saya Menyetujui ",
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: "syarat", style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: ",", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "ketentuan",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: ", ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "dan", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: ", ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "privasi", style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: ", ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Telkomsel",
                          style: TextStyle(color: Colors.black)),
                    ])),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white38),
              onPressed: () {},
              child: Text(
                "Masuk",
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Atau masuk menggunakan",
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      Text("Facebook",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[600])),
                    ],
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.purple),
                      ))),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/twiter.png"),
                      Text("Twiter",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[600])),
                    ],
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.blue),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
