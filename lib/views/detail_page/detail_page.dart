import 'package:flutter/material.dart';
import 'package:quotes_app/utils/my_extentions.dart';
import 'package:quotes_app/utils/my_fonts.dart';
import 'package:quotes_app/models/quote_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String quotesFont = MyFonts.Anton.name;
  String authorFonts = MyFonts.Roboto.name;
  int quoteCounter = 18;
  int authorCounter = 14;

  List<Color> myColors = [
    Colors.white,
    ...Colors.primaries,
  ];

  Color quoteFontColor = Colors.white;
  Color bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    QuoteModel quote = ModalRoute.of(context)!.settings.arguments as QuoteModel;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.30,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              alignment: const Alignment(0, -1),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    quote.quote,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: quoteCounter.toDouble(),
                      fontFamily: quotesFont,
                    ),
                  ),
                  Text(
                    "~ ${quote.author}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: authorCounter.toDouble(),
                      fontWeight: FontWeight.w600,
                      fontFamily: authorFonts,
                    ),
                  ),
                ],
              ),
            ),
            15.h,

            //Quote font title
            Row(
              children: [
                const Text(
                  "Quotes Font",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        quoteCounter--;
                      });
                    },
                    icon: const Icon(Icons.remove)),
                Text("$quoteCounter"),
                IconButton(
                    onPressed: () {
                      setState(() {
                        quoteCounter++;
                      });
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
            10.h,

            //Quote fonts
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: MyFonts.values
                    .map(
                      (f) => TextButton(
                        onPressed: () {
                          setState(() {
                            quotesFont = f.name;
                          });
                        },
                        child: Text(
                          "Abc",
                          style: TextStyle(fontFamily: f.name, fontSize: 16),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            15.h,

            //Author fonts title
            Row(
              children: [
                const Text(
                  "Author Font",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        authorCounter--;
                      });
                    },
                    icon: const Icon(Icons.remove)),
                Text("$authorCounter"),
                IconButton(
                    onPressed: () {
                      setState(() {
                        authorCounter++;
                      });
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
            10.h,

            //Author fonts
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: MyFonts.values
                    .map((f) => TextButton(
                        onPressed: () {
                          setState(() {
                            authorFonts = f.name;
                          });
                        },
                        child: Text(
                          "Abc",
                          style: TextStyle(fontFamily: f.name),
                        )))
                    .toList(),
              ),
            ),
            15.h,

            //Quote color title
            const Row(
              children: [
                Text(
                  "Quote Colors",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            10.h,

            //Quotes colors
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Stack(
                children: [
                  Row(
                    children: myColors
                        .map(
                          (e) => GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black54,
                                ),
                              ),
                              margin: const EdgeInsets.all(10),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Row(
                    children: myColors
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              bgColor = e;
                              setState(() {});
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: e,
                                shape: BoxShape.circle,
                              ),
                              margin: const EdgeInsets.all(10),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
