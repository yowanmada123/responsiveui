import 'package:flutter/material.dart';
import 'package:futurium/model/model_museum.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:futurium/screen/detail_screen/detail_image.dart';

class DetailWebsiteScreen extends StatefulWidget {
  final FutureMuseum museum;

  const DetailWebsiteScreen({super.key, required this.museum});

  @override
  State<DetailWebsiteScreen> createState() => _DetailWebsiteScreenState();
}

class _DetailWebsiteScreenState extends State<DetailWebsiteScreen> {
  final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  String selectedImage = '';

  @override
  void initState() {
    selectedImage = widget.museum.imageAsset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle informationTextStyle = const TextStyle();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset("assets/logo2.png"),
        ),
        leadingWidth: 50,
        title: const Text(
          'Museum Indonesia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 1200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Museum Detail',
                            style: TextStyle(
                              fontFamily: 'Staatliches',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailImage(
                                            imageUrl: selectedImage),
                                      ),
                                    );
                                  },
                                  child: (kIsWeb)
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(selectedImage),
                                        )
                                      : ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(selectedImage),
                                        ),
                                ),
                                const SizedBox(height: 16),
                                Scrollbar(
                                  controller: _scrollController,
                                  child: Container(
                                    height: 150,
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: widget.museum.imageUrls.map(
                                        (url) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(
                                                () {
                                                  selectedImage = url;
                                                },
                                              );
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: (kIsWeb)
                                                  ? ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.network(url),
                                                    )
                                                  : ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(url),
                                                    ),
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Card(
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    SizedBox(
                                      child: Text(
                                        widget.museum.name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 30.0,
                                          fontFamily: 'Staatliches',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.calendar_month,
                                              color: Colors.red[600],
                                            ),
                                            const SizedBox(width: 8.0),
                                            Text(
                                              widget.museum.openDays,
                                              style: informationTextStyle,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.purple[600],
                                        ),
                                        const SizedBox(width: 8.0),
                                        Text(
                                          widget.museum.openTime,
                                          style: informationTextStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber[400],
                                        ),
                                        const SizedBox(width: 8.0),
                                        Text(
                                          widget.museum.rating.toString(),
                                          style: informationTextStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.green[800],
                                        ),
                                        const SizedBox(width: 8.0),
                                        Text(
                                          widget.museum.ticketPrice,
                                          style: informationTextStyle,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(
                                        widget.museum.description,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'Oxygen',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
