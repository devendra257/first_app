import 'package:flutter/widgets.dart';

class QuoteModel {
  int id;
  String quote;
  String author;

  QuoteModel({required this.id, required this.quote, required this.author});

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      id: json['id'],
      quote: json['quote'],
      author: json['author'],
    );
  }

 static List<QuoteModel> getListQuote(List<Map<String, dynamic>> data) {
    List<QuoteModel> arrQuoteList = [];

    for (Map<String, dynamic> eachQuote in data) {
      arrQuoteList.add(QuoteModel.fromJson(eachQuote));
    }
    return arrQuoteList;
  }
}
