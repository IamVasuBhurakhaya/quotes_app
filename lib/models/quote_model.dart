class QuoteModel {
  String quote, author, category, popularity;
  int quotes_like, quotes_share;

  QuoteModel(
    this.quote,
    this.author,
    this.category,
    this.quotes_like,
    this.quotes_share,
    this.popularity,
  );

  factory QuoteModel.fromMap({required Map data}) => QuoteModel(
        data['quote'],
        data['author'],
        data['category'],
        data['quotes_like'],
        data['quotes_share'],
        data['popularity'],
      );

  Map<String, dynamic> get toMap => {
        'quote': quote,
        'author': author,
        'category': category,
        'quotes_like': quotes_like,
        'quotes_share': quotes_share,
        'popularity': popularity,
      };
}
