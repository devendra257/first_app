import 'package:first_app/api/api_models/basic_quote_model/quote_model.dart';

class QuoteMainModel {
  int? total;
  int? skip;
  int? limit;
  List<QuoteModel>? quotes;

  QuoteMainModel({
    this.total,
    this.skip,
    this.limit,
    this.quotes,
  });

  factory QuoteMainModel.fromJson(Map<String, dynamic> json) {
    List<QuoteModel> arrQuoteList = [];

    for (Map<String, dynamic> eachQuote in json['quotes']) {
      QuoteModel eachModel = QuoteModel.fromJson(eachQuote);
      arrQuoteList.add(eachModel);

      //! Short Cut Calling
      // arrQuoteList.add(QuoteModel.fromJson(eachQuote));
    }

    return QuoteMainModel(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      quotes: arrQuoteList,

      //* Ye Get List Quote Function...
      // quotes: QuoteModel.getListQuote(json['quotes']),
    );
  }
}
