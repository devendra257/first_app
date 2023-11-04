import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  const SharedPrefPage({super.key});

  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {
  var _nameController = TextEditingController();
  String? name;

  @override
  void initState() {
    super.initState();
    getSharedPref();
  }

  void getSharedPref() async {
    //! Get(Read) Shared Preferences
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = pref.getString("Name");
//* Time Lagega to isliye setstate call karna hoga
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [
              Text("Name Saved: ${name ?? 'Default Name'}"),
              //* ?? Operate =  --Null aware Assignment
              TextField(
                controller: _nameController,
              ),
              ElevatedButton(
                //! Set (Write)Shared Preferences
                onPressed: () async {
                  //* mtlb ye code wait kiya jayega but jab tak shared preferences ki value ni aa jati tab tak ye function aage work ni karega mtlb ki ye hi function bas aage work ni karega baki pura page sync rahega but yahi waha async hoga
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  //* other code which is to executed after above line (Ye wo code jab wo upar wali line mere liye code le ke aa jaye tab ye code run karna h)
                  pref.setString("Name", _nameController.text.toString());
                },
                child: Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
