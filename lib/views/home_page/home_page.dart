import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:quotes_app/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheck = false;
  final colors = Colors.primaries;

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (val, result) async {
        if (val) {
          return;
        }
        bool canPop = await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: Text("Alert Dialog Box"),
            content: Text("Are you sure to Exit !! "),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text("YES"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text("NO"),
              ),
            ],
          ),
        );
        if (canPop) {
          exit(0);
        }
      },
      child: Scaffold(
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
                      cardsCount: cards.length,
                      cardBuilder: (context, index, percentThresholdX,
                              percentThresholdY) =>
                          cards[index],
                    ),
                  )
                : Scrollbar(
                    thickness: 8,
                    radius: Radius.circular(10),
                    interactive: true,
                    thumbVisibility: true,
                    // trackVisibility: true,
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
                          color: colors[index % 18],
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
                                  textAlign: TextAlign.end,
                                  "~ ${allQuotes[index].author}",
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
                  )),
      ),
    );
  }
}
