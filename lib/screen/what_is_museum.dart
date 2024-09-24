import 'package:flutter/material.dart';

class WhatIsMuseumScreen extends StatelessWidget {
  const WhatIsMuseumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          "What Is Meseum",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Image.asset("assets/logo.PNG"),
                Text(
                  "Museum adalah gerbang menuju masa lalu, masa kini, dan masa depan, menawarkan sekilas keajaiban sejarah, seni, dan sains manusia. Dari museum tertua di dunia di Mesopotamia kuno hingga bangunan ikonik modern seperti Piramida Louvre dan Museum Guggenheim, institusi ini tidak hanya menyimpan koleksi artefak tetapi juga karya arsitektur yang mengagumkan. Baik Anda mengagumi peninggalan kuno, terpesona oleh karya seni, atau berinteraksi dengan pameran sains, museum mengubah pembelajaran menjadi pengalaman yang memikat bagi segala usia. Jelajahi, temukan, dan dapatkan inspirasi!",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
