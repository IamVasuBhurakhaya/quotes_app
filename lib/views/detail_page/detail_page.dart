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
  @override
  Widget build(BuildContext context) {
    QuoteModel quote = ModalRoute.of(context)!.settings.arguments as QuoteModel;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.45,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              alignment: Alignment(0, -1),
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
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
            Row(
              children: [
                Text(
                  "Quotes Font",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        quoteCounter--;
                      });
                    },
                    icon: Icon(Icons.remove)),
                Text("${quoteCounter}"),
                IconButton(
                    onPressed: () {
                      setState(() {
                        quoteCounter++;
                      });
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
            10.h,
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
            Row(
              children: [
                Text(
                  "Author Font",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        authorCounter--;
                      });
                    },
                    icon: Icon(Icons.remove)),
                Text("${authorCounter}"),
                IconButton(
                    onPressed: () {
                      setState(() {
                        authorCounter++;
                      });
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
            10.h,
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
          ],
        ),
      ),
    );
  }
}
