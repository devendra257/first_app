import 'dart:convert';

import 'package:first_app/api/api_models/image_model/data_photo_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoCurated extends StatefulWidget {
  const PhotoCurated({super.key});

  @override
  State<PhotoCurated> createState() => _PhotoCuratedState();
}

class _PhotoCuratedState extends State<PhotoCurated> {
  late Future<DataPhotoModel> photoCuratedData;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    photoCuratedData = getPhotoCurated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Curated Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search Image',
                  label: const Text('Search Image'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      // var photo = searchController.text.toString();
                      // photoCuratedData = getPhotoCurated(photo);
                      // setState(() {});
                    },
                    child: Icon(Icons.search, size: 30),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: photoCuratedData,
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
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
                            mainAxisSpacing: 11,
                            crossAxisSpacing: 11,
                          ),
                          itemBuilder: (cxt, index) {
                            return SizedBox(
                              width: double.infinity,
                              child: Image.network(
                                snapshot.data!.photos![index].src!.portrait!,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        );
                      }
                      return const Center(child: Text('Data is Not Found'));
                    }
                  }
                  return const Center(child: Text('Data is Not Found'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DataPhotoModel> getPhotoCurated() async {
    String url = "https://api.pexels.com/v1/curated?per_page=50";

    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization':
            'aMDZJHEwVRvmgLkoJWyMmRhiJNEshBcghHz4Txs7SQdOGbZfb5vM5XWZ'
      },
    );

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return DataPhotoModel.fromJson(json);
    } else {
      return DataPhotoModel();
    }
  }
}
