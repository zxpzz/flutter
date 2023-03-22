import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

  List<dynamic> _data = [];
  
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    final response =
        await http.get(Uri.parse('http://www.wwhzz.top:9102/user'));

      setState(() {
        _data = json.decode(response.body);
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading:Image(image:NetworkImage(_data[index]['image'])),
                  title: Text(_data[index]['name']),
                  subtitle: Text('￥:'+_data[index]['price']),
                  // trailing: Text(_data[index]['singer'],textAlign: TextAlign.center,),
                  trailing: Container(
                    child: Text('歌手:'+_data[index]['singer']),
                    alignment: Alignment.centerLeft,
                    width: 130.0,
                  ),
                );
                // Row(
                //   children: [
                //     Image.network(_data[index]['image'],width: 50,height: 50,),
                //     Text(_data[index]['name'],textAlign: TextAlign.center,),
                //     Text(_data[index]['price'],textAlign: TextAlign.center,)
                //   ],
                // );
              },
            ),
    );
  }
}