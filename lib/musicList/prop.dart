import 'package:flutter/cupertino.dart';

class prop extends StatefulWidget {
  const prop({super.key});

  @override
  State<prop> createState() => _propState();
}

class _propState extends State<prop> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'hello text'
    );
  }
}