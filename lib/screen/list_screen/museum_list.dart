import 'package:flutter/material.dart';
import 'package:futurium/model/model_museum.dart';
import 'package:futurium/screen/detail_screen/detail_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MuseumList extends StatelessWidget {
  const MuseumList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final FutureMuseum museum = museumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(
                      place: museum,
                    );
                  },
                ),
              );
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (kIsWeb) ...[
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        museum.imageAsset,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ] else ...[
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        museum.imageAsset,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            museum.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.green[800],
                                size: 15,
                              ),
                              Text(
                                museum.ticketPrice.toString(),
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                                size: 15,
                              ),
                              Text(
                                museum.rating.toString(),
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  museum.location,
                                  style: const TextStyle(fontSize: 12.0),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: museumList.length,
      ),
    );
  }
}
