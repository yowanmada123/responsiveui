import 'package:flutter/material.dart';
import 'package:futurium/model/model_museum.dart';
import 'package:futurium/screen/detail_screen/detail_mobile_screen.dart';
import 'package:futurium/screen/detail_screen/detail_website_Screen.dart';

class DetailScreen extends StatelessWidget {
  final FutureMuseum place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return DetailMobileScreen(museum: place);
        } else {
          return DetailWebsiteScreen(museum: place);
        }
      },
    );
  }
}
