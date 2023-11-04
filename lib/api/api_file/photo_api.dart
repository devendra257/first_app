import 'dart:convert';

import 'package:first_app/api/api_models/image_model/data_photo_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoAPI extends StatefulWidget {
  const PhotoAPI({super.key});

  @override
  State<PhotoAPI> createState() => _PhotoAPIState();
}

class _PhotoAPIState extends State<PhotoAPI> {
  late Future<DataPhotoModel> dataPhotoModel;

  @override
  void initState() {
    super.initState();

    dataPhotoModel = getPhotoAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo API'),
      ),
      body: FutureBuilder(
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
                  padding: EdgeInsets.all(11),
                  itemCount: snapshot.data!.photos!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 9 / 16,
                    crossAxisSpacing: 11,
                  ),
                  itemBuilder: (_, index) {
                    return Image.network(
                      snapshot.data!.photos![index].src!.portrait!,
                    );
                  },
                );
              }
              return Container();
            }
          }
          return const Center(
            child: Text(
              'No Data Found ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }

  Future<DataPhotoModel> getPhotoAPI() async {
    Uri url =
        Uri.parse('https://api.pexels.com/v1/search?query=roses&per_page=30');

    var response = await http.get(url, headers: {
      'Authorization':
          'aMDZJHEwVRvmgLkoJWyMmRhiJNEshBcghHz4Txs7SQdOGbZfb5vM5XWZ'
    });

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return DataPhotoModel.fromJson(json);
    } else {
      return DataPhotoModel();
    }
  }
}
