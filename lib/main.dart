import 'package:flutter/material.dart';
import 'package:whatsapp98/pages/chatPage.dart';
import 'package:whatsapp98/pages/pageHome.dart';
import 'package:whatsapp98/pages/settingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      // fonGenerateRoute: Routes.onGenerateRoute,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          color: Color(0xFF075E55),
        ),

        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        )
      ),

      routes: {
        "/" : ((context) =>const PageHome()),
        "settingsPage" : ((context) =>const SettingsPage()),
        "chatPage" : ((context) =>const ChatPage()),
      },
    );
  }
}
