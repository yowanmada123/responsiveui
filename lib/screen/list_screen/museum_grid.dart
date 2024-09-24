import 'package:flutter/material.dart';
import 'package:futurium/model/model_museum.dart';
import 'package:futurium/screen/detail_screen/detail_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MuseumGrid extends StatelessWidget {
  final int gridCount;

  const MuseumGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        children: museumList.map(
          (museum) {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (kIsWeb) ...[
                      Expanded(
                        child: Image.network(
                          museum.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ] else ...[
                      Expanded(
                        child: Image.asset(
                          museum.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        museum.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.green[800],
                          ),
                          Text(
                            museum.ticketPrice.toString(),
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[400],
                          ),
                          Text(
                            museum.rating.toString(),
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on),
                          Expanded(
                            child: Text(
                              museum.location,
                              style: const TextStyle(fontSize: 12.0),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
