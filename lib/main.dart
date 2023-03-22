import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_3/musicList/list.dart';
import 'package:flutter_application_3/navigationbar/NavigationBar1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: '歌单列表'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    List<dynamic> _date=[];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: MaterialApp(home:BootmNavigationBar1())
    //   Column(children: [
    //     MaterialButton(onPressed: (){
    //       http.get(Uri.parse('http://8.130.75.98:9102/user')).then((value){
    //       _date=json.decode(value.body);
    //         // print(value.body);
    // });
    //     },child: Text('点击'))
    //   ],)
    );
  }
}
