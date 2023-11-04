import 'dart:convert';

import 'package:first_app/api/api_file/photo_with_search/photo_next_view_page.dart';
import 'package:first_app/api/api_models/image_model/data_photo_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoApiWithSearch extends StatefulWidget {
  const PhotoApiWithSearch({super.key});

  @override
  State<PhotoApiWithSearch> createState() => _PhotoApiWithSearchState();
}

class _PhotoApiWithSearchState extends State<PhotoApiWithSearch> {
  late Future<DataPhotoModel> dataPhotoModel;
  TextEditingController searchController = TextEditingController();

  var searchBtn;

  @override
  void initState() {
    super.initState();
    dataPhotoModel = getPhotoAPI('Nature');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo API with Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search Photo',
                      label: const Text(
                        'Search Photo',
                        style: TextStyle(
                            color: const Color.fromARGB(151, 155, 39, 176)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    searchBtn = searchController.text.toString();
                    dataPhotoModel = getPhotoAPI(searchBtn);
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.image_search,
                    size: 35,
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: FutureBuilder(
                future: dataPhotoModel,
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          "${snapshot.error}",
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      if (snapshot.data != null &&
                          snapshot.data!.photos != null &&
                          snapshot.data!.photos!.isNotEmpty) {
                        return GridView.builder(
                          itemCount: snapshot.data!.photos!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 9 / 16,
                            crossAxisSpacing: 11,
                          ),
                          itemBuilder: (_, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PhotoNextPage(
                                      title:
                                          "${snapshot.data!.photos![index].photographer}",
                                      img: snapshot
                                          .data!.photos![index].src!.portrait!,
                                    ),
                                  ),
                                );
                              },
                              child: Image.network(
                                snapshot.data!.photos![index].src!.portrait!,
                              ),
                            );
                          },
                        );
                      }
                      return const Center(
                        child: Text(
                          'No Data Found !!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      );
                    }
                  }
                  return const Center(
                    child: Text(
                      'No Data Found ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DataPhotoModel> getPhotoAPI(String query) async {
    Uri url =
        Uri.parse('https://api.pexels.com/v1/search?query=$query&per_page=30');

    var response = await http.get(url, headers: {
      'Authorization':
          'aMDZJHEwVRvmgLkoJWyMmRhiJNEshBcghHz4Txs7SQdOGbZfb5vM5XWZ'
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return DataPhotoModel.fromJson(json);
    } else {
      return DataPhotoModel();
    }
  }
}
