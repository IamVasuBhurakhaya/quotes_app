import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/utils/my_extentions.dart';
import 'package:quotes_app/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheck = false;

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
                ? const Icon(Icons.grid_view_rounded)
                : const Icon(Icons.list_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isCheck
            // ? Flexible(
            //     child: CardSwiper(
            //       cardsCount: allQuotes.length,
            //       cardBuilder:
            //           (context, index, percentThresholdX, percentThresholdY) =>
            //               Container(
            //         decoration:
            //             BoxDecoration(color: Colors.primaries[index % 18]),
            //         alignment: Alignment.center,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Text(
            //               allQuotes[index].quote,
            //               textAlign: TextAlign.center,
            //               style: TextStyle(color: Colors.white, fontSize: 18),
            //               maxLines: 5,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //             SizedBox(height: 10),
            //             Text(
            //               "~ ${allQuotes[index].author}",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                   color: Colors.white, fontWeight: FontWeight.w600),
            //               maxLines: 1,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   )
            ? Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: CardSwiper(
                  cardsCount: allQuotes.length,
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          AnimatedContainer(
                    padding: const EdgeInsets.all(20),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.primaries[index % Colors.primaries.length],
                          Colors
                              .primaries[(index + 1) % Colors.primaries.length]
                              .withOpacity(0.7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Quote Text
                        Text(
                          allQuotes[index].quote,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 20),
                        // Author Text
                        Text(
                          "~ ${allQuotes[index].author}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.thumb_up,
                                    color: Colors.white, size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  "${allQuotes[index].quotes_like}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.share,
                                    color: Colors.white, size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  "${allQuotes[index].quotes_share}", // Assuming you have share_count
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.category,
                                    color: Colors.white, size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  "${allQuotes[index].category}", // Assuming you have a category field
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.white, size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  "${allQuotes[index].popularity}", // Assuming you have a popularity field
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Scrollbar(
                thickness: 8,
                radius: const Radius.circular(10),
                interactive: true,
                thumbVisibility: true,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "~ ${allQuotes[index].author}",
                              textAlign: TextAlign.end,
                              style: const TextStyle(
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
