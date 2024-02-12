import 'package:flutter/material.dart';
import 'package:youtube/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:youtube/navigat.dart';
import 'package:youtube/zomato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home:zoma(),
    // AnimatedSplashScreen(
    //   //   splashIconSize: 400,
    //   //   splash: Image.network("https://assets.turbologo.com/blog/en/2019/10/19084944/youtube-logo-illustration.jpg"),
    //   //   duration: 2000,
    //   //
    //   //   nextScreen: hom(),)
    );
  }
}


