import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/utils/utils.dart'; // Import the QuoteModel class

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheck = false;

  // Convert the list of maps to a list of QuoteModel objects
  List<QuoteModel> allQuotes =
      allQuoteData.map((data) => QuoteModel.fromMap(data: data)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote App"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isCheck = !isCheck;
              });
            },
            icon: isCheck
                ? Icon(Icons.grid_view_rounded)
                : Icon(Icons.list_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isCheck
            ? Flexible(
                child: CardSwiper(
                  cardsCount: allQuotes.length,
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          Container(
                    decoration:
                        BoxDecoration(color: Colors.primaries[index % 18]),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          allQuotes[index].quote,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "~ ${allQuotes[index].author}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Scrollbar(
                thickness: 8,
                radius: Radius.circular(10),
                interactive: true,
                thumbVisibility: true,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: allQuotes.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        'detail_page',
                        arguments: allQuotes[index],
                      );
                    },
                    child: Card(
                      color: Colors.primaries[index % 18],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                allQuotes[index].quote,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "~ ${allQuotes[index].author}",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
