import 'dart:convert';

import 'package:first_app/api/api_models/product_model/data_product_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ProductAPI extends StatefulWidget {
  const ProductAPI({super.key});

  @override
  State<ProductAPI> createState() => _ProductAPIState();
}

class _ProductAPIState extends State<ProductAPI> {
  late Future<DataProductModel> productData;

  @override
  void initState() {
    super.initState();
    productData = getProductDataApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product API'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                productData = getProductDataApi();
                setState(() {});
              },
              child: Text('Get Data')),
          FutureBuilder<DataProductModel>(
            future: productData,
            builder: (_, spanshot) {
              if (spanshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (spanshot.hasError) {
                  return Text('${spanshot.error}');
                } else if (spanshot.hasData) {
                  if (spanshot.data != null &&
                      spanshot.data!.products != null &&
                      spanshot.data!.products!.isNotEmpty) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: spanshot.data!.products!.length,
                        itemBuilder: (_, index) {
                          var eachData = spanshot.data!.products![index];
                          return SizedBox(
                            height: 300,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: eachData.thumbnail != null
                                      ? Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.blue.shade300,
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                    eachData.thumbnail!,
                                                  ))),
                                          // child: Image.network(
                                          //   eachData.thumbnail!,
                                          //   fit: BoxFit.cover,
                                          // ),
                                        )
                                      : CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/ic_facebook.png',
                                            width: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  title: Text(eachData.title.toString()),
                                  subtitle:
                                      Text(eachData.description.toString()),
                                  trailing: Text(
                                    "\$${eachData.price!}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: eachData.images!.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, subIndex) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          eachData.images![subIndex],
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return Container(
                    child: Text('Not Data Found'),
                  );
                }
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }

  Future<DataProductModel> getProductDataApi() async {
    Uri url = Uri.parse('https://dummyjson.com/products');

    var reponse = await http.get(url);

    if (reponse.statusCode == 200) {
      var json = jsonDecode(reponse.body);
      return DataProductModel.fromJson(json);
    } else {
      return DataProductModel();
    }
  }
}
