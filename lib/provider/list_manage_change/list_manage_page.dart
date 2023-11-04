import 'package:first_app/provider/list_manage_change/list_manage_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListManagePage extends StatelessWidget {
  var nameController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Manage'),
      ),
      body: Consumer<ListProvider>(
        builder: (_, provider, __) {
          List<Map<String, dynamic>> data = provider.getMyListData();
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text("${data[index]['Name']}"),
                subtitle: Text('Class: ${data[index]['class']}'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 20,
                      ),
                      onPressed: () {
                        nameController.text = data[index]['Name'];
                        descController.text = data[index]['class'];
                        showModalBottomSheet(
                          context: context,
                          builder: (_) {
                            return Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Text('Update Data'),
                                  SizedBox(
                                    height: 21,
                                  ),
                                  TextField(
                                    controller: nameController,
                                  ),
                                  SizedBox(
                                    height: 21,
                                  ),
                                  TextField(
                                    controller: descController,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        var dataToBeUpdated = {
                                          'Name':
                                              nameController.text.toString(),
                                          'class':
                                              descController.text.toString(),
                                        };

                                        context
                                            .read<ListProvider>()
                                            .updateData(dataToBeUpdated, index);
                                      },
                                      child: Text('Update'))
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    InkWell(
                      onTap: () {
                        context.read<ListProvider>().removeData(index);
                      },
                      child: Icon(
                        Icons.delete,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Map<String, dynamic> newData = {
            'Name': "Rahuk",
            'class': "X",
          };
          context.read<ListProvider>().addData(newData);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
