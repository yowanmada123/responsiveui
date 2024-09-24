import 'package:flutter/material.dart';
import 'package:futurium/model/model_museum.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:futurium/screen/detail_screen/detail_image.dart';

class DetailMobileScreen extends StatefulWidget {
  final FutureMuseum museum;

  const DetailMobileScreen({super.key, required this.museum});

  @override
  State<DetailMobileScreen> createState() => _DetailMobileScreenState();
}

class _DetailMobileScreenState extends State<DetailMobileScreen> {
  final _scrollController = ScrollController();
  String selectedImage = '';

  @override
  void initState() {
    selectedImage = widget.museum.imageAsset;
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Museum Detail',
          style: TextStyle(
              fontFamily: 'Staatliches',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          padding: EdgeInsets.zero,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Column(
                        children: [
                          if (kIsWeb) ...[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailImage(imageUrl: selectedImage),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(selectedImage),
                              ),
                            ),
                          ] else ...[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailImage(
                                        imageUrl: widget.museum.imageAsset),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(selectedImage),
                              ),
                            ),
                          ],
                          const SizedBox(height: 8),
                          Scrollbar(
                            controller: _scrollController,
                            child: Container(
                              height: 80,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: widget.museum.imageUrls.map(
                                  (url) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedImage = url;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: (kIsWeb)
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(url),
                                              )
                                            : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                      const SizedBox(height: 32),
                      Card(
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
                                    fontSize: 20.0,
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
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.purple[600],
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.museum.openTime,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber[400],
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.museum.rating.toString(),
                                    style: const TextStyle(fontSize: 12.0),
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
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
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
