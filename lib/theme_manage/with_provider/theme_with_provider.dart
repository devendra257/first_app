import 'package:first_app/theme_manage/with_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeWithProvider extends StatefulWidget {
  const ThemeWithProvider({super.key});

  @override
  State<ThemeWithProvider> createState() => _ThemeWithProviderState();
}

class _ThemeWithProviderState extends State<ThemeWithProvider> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (_, provider, child) {
      return MaterialApp(
        themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
        // themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        home: ThemeHomePage(),
      );
    });
  }
}

class ThemeHomePage extends StatelessWidget {
  Color bgColor = Colors.white;
  Color secondaryColor = Colors.black;
  Color textSecondaryColor = Colors.white;
  Color textColor = Colors.black;
  String title = '';
  late bool isDark;

  @override
  Widget build(BuildContext context) {
    var mediaData = MediaQuery.of(context);
    print("Platform:${mediaData.platformBrightness}");

    var themedata = Theme.of(context);
    print("Theme App For app: ${themedata.brightness}");

    isDark = themedata.brightness == Brightness.dark;
    getColorData();
    return Scaffold(
      backgroundColor: bgColor,
      // backgroundColor: isDark ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I am Devendra',
              style: TextStyle(
                fontSize: 20,
                color: textColor,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              color: secondaryColor,
              // color: isDark ? Colors.white : Colors.black,
              child: Center(
                child: Text(
                  'Hello $title',
                  // "Hello ${isDark ? 'Dark' : 'Light'}",
                  style: TextStyle(
                    color: textSecondaryColor,
                    // color: isDark ? Colors.black : Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //! Ask about this..
                Text('Switch in Dark and Light Mode'),
                Switch(
                  value: isDark,
                  onChanged: (value) {
                    context.read<ThemeProvider>().updateTheme(value);
                  },
                ),
              ],
            )

            // ElevatedButton(
            //     onPressed: () {
            //       context.read<themeProvider>().changeTheme();
            //     },
            //     child: Text('Change Theme'))
          ],
        ),
      ),
    );
  }

  getColorData() {
    if (isDark) {
      bgColor = Colors.black;
      secondaryColor = Colors.white;
      textSecondaryColor = Colors.black;
      textColor = Colors.white;
      title = 'Dark';
    } else {
      bgColor = Colors.white;
      secondaryColor = Colors.black;
      textSecondaryColor = Colors.white;
      textColor = Colors.black;
      title = 'Light';
    }
  }
}
