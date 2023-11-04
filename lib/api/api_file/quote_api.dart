import 'dart:convert';

import 'package:first_app/api/api_models/basic_quote_model/quote_model_main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuoteApi extends StatefulWidget {
  const QuoteApi({super.key});

  @override
  State<QuoteApi> createState() => _QuoteApiState();
}

class _QuoteApiState extends State<QuoteApi> {
  late Future<QuoteMainModel> data;

  int? isFav;
  @override
  void initState() {
    data = getQuoteApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quote API Data'),
        ),
        body: FutureBuilder<QuoteMainModel>(
            future: data,
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromARGB(255, 213, 213, 213),
                  child: Center(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              } else {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.quotes!.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        leading: Text("${index + 1}"),
                        title: Text(snapshot.data!.quotes![index].quote),
                        subtitle: Text(snapshot.data!.quotes![index].author),
                        trailing: InkWell(
                          onTap: () {
                            isFav = index;
                            setState(() {});
                          },
                          child: isFav == index
                              ? Icon(Icons.favorite)
                              : Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                        ),
                      );
                    },
                  );
                }
              }

              return Container(
                child: Center(
                  child: Text('Not Found'),
                ),
              );
            })

        // data != null
        //     ? ListView.builder(
        //         itemCount: data!.quotes.length,
        //         itemBuilder: (_, index) {
        //           return ListTile(
        //             leading: Text('${index + 1}'),
        //             title: Text(data!.quotes[index].quote),
        //             subtitle: Text(data!.quotes[index].author),
        //           );
        //         },
        //       )
        //     : const Center(
        //         child: Text('Data Not Found'),
        //       ),
        );
  }

  Future<QuoteMainModel> getQuoteApi() async {
    var quoteUrl = await http.get(Uri.parse("https://dummyjson.com/quotes"));

    print('Status Code - ${quoteUrl.statusCode} Body Code - ${quoteUrl.body}');

    if (quoteUrl.statusCode == 200) {
      var json = jsonDecode(quoteUrl.body);

      return QuoteMainModel.fromJson(json);

      // print(
      //     '${data!.total}, ${data!.limit}, ${data!.skip}, ${data!.quotes.length}');
    } else {
      return QuoteMainModel();
    }
  }
}
