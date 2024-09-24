import 'package:flutter/material.dart';
import 'package:futurium/screen/list_screen/museum_grid.dart';
import 'package:futurium/screen/list_screen/museum_list.dart';
import 'package:futurium/screen/what_is_museum.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset("assets/logo.PNG"),
        ),
        leadingWidth: 50,
        title: const Text(
          'Museum Indonesia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WhatIsMuseumScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MuseumList();
          } else if (constraints.maxWidth <= 1200) {
            return const MuseumGrid(gridCount: 4);
          } else {
            return const MuseumGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
