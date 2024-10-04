import 'package:flutter/material.dart';
import 'package:flutter_basic/models/placeModel.dart';
import 'package:flutter_basic/screens/DetailScreen.dart';

class DetailWebScreen extends StatelessWidget {
  final Placemodel place;

  const DetailWebScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

class DetailMobilePage extends StatefulWidget {
  final Placemodel place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailMobilePage> createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {
  final _scrollbar = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            height: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(widget.place.imageAsset),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Scrollbar(
                          controller: _scrollbar,
                          child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                  controller: _scrollbar,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.place.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList())),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: Text(
                                widget.place.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Staatliches',
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openDays,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                const FavoriteButton(),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.openTime,
                                  style: informationTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.monetization_on),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.ticketPrice,
                                  style: informationTextStyle,
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                widget.place.description,
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
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollbar.dispose();
    super.dispose();
  }
}

class DetailWebPage extends StatefulWidget {
  final Placemodel place;

  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollbar = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            height: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(widget.place.imageAsset),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Scrollbar(
                          controller: _scrollbar,
                          child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                  controller: _scrollbar,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.place.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList())),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: Text(
                                widget.place.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Staatliches',
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openDays,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                const FavoriteButton(),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.openTime,
                                  style: informationTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.monetization_on),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.ticketPrice,
                                  style: informationTextStyle,
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                widget.place.description,
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
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollbar.dispose();
    super.dispose();
  }
}
