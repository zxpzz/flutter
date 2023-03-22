import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/musicList/list.dart';
import 'package:flutter_application_3/musicList/prop.dart';
import 'package:flutter_application_3/musicList/shopp.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BootmNavigationBar1 extends StatefulWidget {
  const BootmNavigationBar1({super.key});

  @override
  State<BootmNavigationBar1> createState() => _BootmNavigationBarState();
}

class _BootmNavigationBarState extends State<BootmNavigationBar1> {
  int _selectindex=0;

  void _onItem(int index){
    setState(() {
      _selectindex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectindex,
        children: [
          list(),
          prop(),
          shopp()
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectindex,
        onTap: _onItem,
        items: [
          BottomNavigationBarItem(
           icon: Icon(
              Icons.list,
              color: _selectindex==0?Colors.red:null,
            ),
            label: '歌单',
            backgroundColor: Colors.amber
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: _selectindex==1?Colors.red:null,
            ),
            label: '购物车'
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_sharp,
              color: _selectindex==2?Colors.red:null,
            ),
            label: '订单'
    )
          
        ],
    ),
   
     

    );
  }
}